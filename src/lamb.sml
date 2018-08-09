structure ParsingLrVals = ParsingLrValsFun(structure Token = LrParser.Token)
structure Lexing = Lexing(structure Tokens = ParsingLrVals.Tokens)
structure Parsing =
  Join(
    structure LrParser = LrParser
    structure ParserData = ParsingLrVals.ParserData
    structure Lex = Lexing)

val lines = String.fields (fn c => c = #"\n")

fun subject s = "\027[1m" ^ s ^ ":" ^ "\027[0m" ^ " "
val error = "\027[1;31m" ^ "error:" ^ "\027[0m" ^ " "
fun message s = "\027[1m" ^ s ^ "\027[0m"
fun format_error subj msg extra = subject subj ^ error ^ message msg ^ "\n" ^ extra
fun print_error subj msg extra = TextIO.output (TextIO.stdErr, format_error subj msg extra)

fun print_error_in_file file s (i, j) msg = let
  val s0 = String.substring (s, 0, i)
  val s1 = String.substring (s, i, j - i)
  val s2 = String.extract (s, j, NONE)
  val lines0 = lines s0
  val line0 = List.last lines0
  val lineno = List.length lines0
  val colno = String.size line0 + 1
  val lines1 = lines s1
  val lines2 = lines s2
  val highlight_line =
    case lines1 of
      [line1] =>
        line0 ^ "\027[4m" ^ line1 ^ "\027[0m" ^ List.hd lines2
    | _ =>
        line0 ^ "\027[4m" ^ List.hd lines1 ^ "\027[0m"
in
  print_error (file ^ ":" ^ Int.toString lineno ^ ":" ^ Int.toString colno) msg (highlight_line ^ "\n")
end

local
  fun alpha i = let
    val letter = str (chr ((i mod 26) + 97))
  in
    if i < 26 then
      letter
    else
      alpha (i div 26) ^ letter
  end
in
  fun showType i e boundedVars (Type.VAR (r, x)) = let
        val (j, e') =
          case List.find (fn ((_, y), _) => x = y) (!e) of
            NONE => let
              val j = !i
            in
              i := !i + 1
            ; e := ((r, x), j) :: !e
            ; (j, !e)
            end
          | SOME (_, j) =>
              (j, !e)

        val a = alpha j
        val k = ref 0
      in
        if List.exists (fn (_, b) => a = b) boundedVars then (
          while List.exists (fn (_, b) => a ^ Int.toString (!k) = b) boundedVars do
            k := !k + 1
        ; a ^ Int.toString (!k)
        ) else
          a
      end
    | showType _ _ _ (Type.CON (_, x)) =
        x
    | showType i e boundedVars (Type.ARR (_, (T, U))) =
        "(" ^ showType i e boundedVars T ^ " -> " ^ showTypeArr i e boundedVars U ^ ")"
  and showTypeArr i e boundedVars (Type.ARR (_, (T, U))) =
        showType i e boundedVars T ^ " -> " ^ showTypeArr i e boundedVars U
    | showTypeArr i e boundedVars T =
        showType i e boundedVars T
end

exception Duplicate of id

fun checkDup (r, x) e =
  if List.exists (fn ((_, y), _) => x = y) e then
    raise Duplicate (r, x)
  else
    ()

fun mainType r = let
  val n = Type.VAR (r, "n")
  val a = Type.VAR (r, "a")
  val nat = Type.ARR (r, (Type.ARR (r, (n, n)), Type.ARR (r, (n, n))))
  val stdin = Type.ARR (r, (Type.ARR (r, (nat, Type.ARR (r, (a, a)))), Type.ARR (r, (a, a))))
  val N = Type.CON (r, "N")
  val A = Type.CON (r, "A")
  val NAT = Type.ARR (r, (Type.ARR (r, (N, N)), Type.ARR (r, (N, N))))
  val stdout = Type.ARR (r, (Type.ARR (r, (NAT, Type.ARR (r, (A, A)))), Type.ARR (r, (A, A))))
in
  Type.ARR (r, (stdin, stdout))
end

fun inferDecl _ _ (AST.Decl.TYPE (_, x), (PV, BV, E)) =
      (PV, x :: BV, E)
  | inferDecl gensym _ (AST.Decl.VAL (_, (x, T)), (PV, BV, E)) = let
      val (T, PV') = Inferring.generalize gensym nil BV (AST.Type.eval T)
    in
      checkDup x E
    ; (PV' @ PV, BV, (x, T) :: E)
    end
  | inferDecl gensym emitting (AST.Decl.DEF (_, (x, Topt, e)), (PV, BV, E)) = let
      val U = Inferring.infer gensym PV E e
      val S =
        case Option.map AST.Type.eval Topt of
          NONE =>
            if value x = "main" then
              Inferring.unify [(mainType (region x), U)]
            else
              nil
        | SOME T =>
            if value x = "main" then
              Inferring.unify [(mainType (region x), T), (T, U)]
            else
              Inferring.unify [(T, U)]
      val (T, PV') = Inferring.generalize gensym nil BV (Type.subst S U)
    in
      checkDup x E
    ; Option.app (Emitting.emitList ["val ", value x, " : ", showTypeArr (ref 0) (ref nil) BV T, "\n"]) emitting
    ; (PV' @ PV, BV, (x, T) :: (Inferring.substEnv S E))
    end

functor Main(Compiling : COMPILING) = struct
  fun compileDecl _ _ (AST.Decl.TYPE _, E) =
        E
    | compileDecl _ _ (AST.Decl.VAL (_, (x, _)), E) = let
        val E' = (x, 0) :: map (fn (y, i) => (y, i + 1)) E
      in
        E'
      end
    | compileDecl gensym emitting (AST.Decl.DEF (_, (x, _, e)), E) = let
        val e = AST.Exp.erase e
        val e = DeBruijnIndexedTerm.compile E e
        val c = KrivineMachine.compile e
        val () =
          Compiling.compile
            gensym
            emitting
            (map (fn (y, _) => (region y, "lamb_" ^ value y)) E)
            (region x, "lamb_" ^ value x)
            c
        val E' = (x, 0) :: map (fn (y, i) => (y, i + 1)) E
      in
        E'
      end

  fun compile infer gensym emitting (file, (z0, z1)) = let
    val instream = TextIO.openIn file
    val s = TextIO.inputAll instream
    val () = TextIO.closeIn instream
    val z0 = ref z0
    val z1 = ref z1
    val success = ref false
  in
    let
      val read = ref false
      val lexer = Parsing.makeLexer (fn _ => if !read then "" else (read := true; s))
      val (decls, _) = Parsing.parse (0, lexer, fn (msg, i, j) => print_error_in_file file s (i, j) msg, ())
    in
      if infer then
        List.app
          (fn decl =>
            z0 := inferDecl gensym (SOME emitting) (decl, !z0))
          decls
      else (
        List.app
          (fn decl =>
            z0 := inferDecl gensym (SOME emitting) (decl, !z0))
          decls
      ; List.app
          (fn decl =>
            z1 := compileDecl gensym emitting (decl, !z1))
          decls
      )
    ; success := true
    end handle
      Lexing.LexError => let
        val i = !Lexing.UserDeclarations.cursor
        val j = i + 1
      in
        print_error_in_file file s (i, j) ("unrecognized character `" ^ str (String.sub (s, i)) ^ "'")
      end
    | Parsing.ParseError =>
        ()
    | DeBruijnIndexedTerm.NotInScope (r, x) =>
        print_error_in_file file s r ("not in scope: `" ^ x ^ "'")
    | Inferring.NotInScope (r, x) =>
        print_error_in_file file s r ("not in scope: `" ^ x ^ "'")
    | Inferring.Cyclic ((r, x), T) => let
        val i = ref 0
        val e = ref nil
      in
        print_error_in_file file s r ("cyclic: " ^ showTypeArr i e (#2 (!z0)) (Type.VAR (r, x)) ^ " in " ^ showTypeArr i e (#2 (!z0)) T)
      end
    | Inferring.Incompatible (T, U) => let
        val r = Type.region T
        val i = ref 0
        val e = ref nil
      in
        print_error_in_file file s r ("incompatible types: " ^ showTypeArr i e (#2 (!z0)) T ^ " and " ^ showTypeArr i e (#2 (!z0)) U)
      end
    | Duplicate (r, x) =>
        print_error_in_file file s r ("duplicate variable: `" ^ x ^ "'")
  ; if not (!success) then
      OS.Process.exit OS.Process.failure
    else
      (!z0, !z1)
  end handle
    IO.Io _ => (
      print_error file "no such file or directory." ""
    ; OS.Process.exit OS.Process.failure
    )
end

datatype target = LINUX | WINDOWS
datatype doing = INFER | COMPILE | ASSEMBLE | LINK | MAKE
exception Unrecognized of string

fun args nil = { target = LINUX, doing = MAKE, output = NONE, files = nil }
  | args ("--target" :: "linux" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = LINUX, doing = doing, output = output, files = files }
    end
  | args ("--target" :: "windows" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = WINDOWS, doing = doing, output = output, files = files }
    end
  | args ("-i" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = LINUX, doing = INFER, output = output, files = files }
    end
  | args ("-S" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = LINUX, doing = COMPILE, output = output, files = files }
    end
  | args ("-c" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = LINUX, doing = ASSEMBLE, output = output, files = files }
    end
  | args ("--link" :: argv) = let
      val {target, doing, output, files} = args argv
    in
      { target = LINUX, doing = LINK, output = output, files = files }
    end
  | args ("-o" :: arg :: argv) =
      if String.size arg > 0 andalso String.sub (arg, 0) = #"-" then
        raise Unrecognized arg
      else let
        val {target, doing, output, files} = args argv
      in
        { target = target, doing = doing, output = SOME arg, files = files }
      end
  | args ("--" :: files) =
      { target = LINUX, doing = MAKE, output = NONE, files = files }
  | args (arg :: argv) =
      if String.size arg > 0 andalso String.sub (arg, 0) = #"-" then
        raise Unrecognized arg
      else let
        val {target, doing, output, files} = args argv
      in
        { target = target, doing = doing, output = output, files = arg :: files }
      end

structure SystemVMain = Main(SystemVCompiling)
structure MicrosoftMain = Main(MicrosoftCompiling)

val () = let
  val LAMB_HOME =
    case OS.Process.getEnv "LAMB_HOME" of
      NONE =>
        (case OS.Process.getEnv "HOME" of
          NONE =>
            (print_error "lamb" "set LAMB_HOME." ""; OS.Process.exit OS.Process.failure)
        | SOME HOME => let
            val LAMB_HOME = OS.Path.concat (HOME, ".lamb")
            val dir = OS.FileSys.openDir LAMB_HOME
          in
            OS.FileSys.closeDir dir
          ; LAMB_HOME
          end handle
            OS.SysErr _ =>
              (print_error "lamb" "set LAMB_HOME." ""; OS.Process.exit OS.Process.failure))
    | SOME LAMB_HOME =>
        LAMB_HOME

  val LAMB_RUNTIME = OS.Path.concat (OS.Path.concat (LAMB_HOME, "lib"), "lamb")

  val {target, doing, output, files} = args (CommandLine.arguments ())
in
  if List.length files = 0 then
    (print_error "lamb" "no input files." ""; OS.Process.exit OS.Process.failure)
  else
    ()
; case target of
    LINUX => let
      val runtimes =
        map
          (fn file => OS.Path.concat (LAMB_RUNTIME, OS.Path.concat ("linux", file)))
          ["runtime.o", "gc.o", "numbers.o", "lamb.o"]

      fun infer output = let
        val outstream =
          case output of
            NONE => TextIO.stdOut
          | SOME output => TextIO.openOut output
        val gensym = Gensym.new ()
        val emitting = Emitting.new ()
        val z0 = (nil, nil, nil)
        val z1 = nil
      in
        List.foldl (SystemVMain.compile true gensym emitting) (z0, z1) files
      ; TextIO.output (outstream, concat (List.rev (Emitting.toList emitting)))
      ; TextIO.closeOut outstream
      end

      fun compile output = let
        val outstream =
          case output of
            NONE => TextIO.openOut (List.last files ^ ".s")
          | SOME output => TextIO.openOut output
        val gensym = Gensym.new ()
        val emitting = Emitting.new ()
        val z0 = (nil, nil, nil)
        val z1 = nil
      in
        List.foldl (SystemVMain.compile false gensym emitting) (z0, z1) files
      ; TextIO.output (outstream, concat (List.rev (Emitting.toList emitting)))
      ; TextIO.closeOut outstream
      end

      fun assemble output = let
        val asmfile =
          List.last files ^ ".s"
        val objfile =
          case output of
            NONE => List.last files ^ ".o"
          | SOME output => output
      in
        OS.Process.system ("gcc -std=c11 -pedantic-errors -Wall -Werror -o " ^ objfile ^ " -c " ^ asmfile)
      ; ()
      end

      fun link output objfiles = let
        val output =
          case output of
            NONE => "a.out"
          | SOME output => output
      in
        (OS.Process.system ("gcc -std=c11 -pedantic-errors -Wall -Werror -o " ^ output ^ " " ^ String.concatWith " " runtimes ^ " " ^ String.concatWith " " objfiles); ())
      end

      fun removeAssembly output = let
        val asmfile =
          case output of
            NONE => List.last files ^ ".s"
          | SOME output => output
      in
        OS.FileSys.remove asmfile
      end

      fun removeObjectCode output = let
        val objfile =
          case output of
            NONE => List.last files ^ ".o"
          | SOME output => output
      in
        OS.FileSys.remove objfile
      end
    in
      case doing of
        INFER =>
          infer output
      | COMPILE =>
          compile output
      | ASSEMBLE =>
          ( compile NONE
          ; assemble output
          ; removeAssembly NONE )
      | LINK =>
          link output files
      | MAKE =>
          ( compile NONE
          ; assemble NONE
          ; link output [List.last files ^ ".o"]
          ; removeObjectCode NONE
          ; removeAssembly NONE )
    end
  | WINDOWS => let
      val runtimes =
        map
          (fn file => OS.Path.concat (LAMB_RUNTIME, OS.Path.concat ("windows", file)))
          ["runtime.o", "gc.o", "numbers.o", "lamb.o"]

      fun infer output = let
        val outstream =
          case output of
            NONE => TextIO.stdOut
          | SOME output => TextIO.openOut output
        val gensym = Gensym.new ()
        val emitting = Emitting.new ()
        val z0 = (nil, nil, nil)
        val z1 = nil
      in
        List.foldl (MicrosoftMain.compile true gensym emitting) (z0, z1) files
      ; TextIO.output (outstream, concat (List.rev (Emitting.toList emitting)))
      ; TextIO.closeOut outstream
      end

      fun compile output = let
        val outstream =
          case output of
            NONE => TextIO.openOut (List.last files ^ ".s")
          | SOME output => TextIO.openOut output
        val gensym = Gensym.new ()
        val emitting = Emitting.new ()
        val z0 = (nil, nil, nil)
        val z1 = nil
      in
        List.foldl (MicrosoftMain.compile false gensym emitting) (z0, z1) files
      ; TextIO.output (outstream, concat (List.rev (Emitting.toList emitting)))
      ; TextIO.closeOut outstream
      end

      fun assemble output = let
        val asmfile =
          List.last files ^ ".s"
        val objfile =
          case output of
            NONE => List.last files ^ ".o"
          | SOME output => output
      in
        OS.Process.system ("x86_64-w64-mingw32-gcc -std=c11 -pedantic-errors -Wall -Werror -o " ^ objfile ^ " -c " ^ asmfile)
      ; ()
      end

      fun link output objfiles = let
        val output =
          case output of
            NONE => "a.out"
          | SOME output => output
      in
        (OS.Process.system ("x86_64-w64-mingw32-gcc -std=c11 -pedantic-errors -Wall -Werror -o " ^ output ^ " " ^ String.concatWith " " runtimes ^ " " ^ String.concatWith " " objfiles); ())
      end

      fun removeAssembly output = let
        val asmfile =
          case output of
            NONE => List.last files ^ ".s"
          | SOME output => output
      in
        OS.FileSys.remove asmfile
      end

      fun removeObjectCode output = let
        val objfile =
          case output of
            NONE => List.last files ^ ".o"
          | SOME output => output
      in
        OS.FileSys.remove objfile
      end
    in
      case doing of
        INFER =>
          infer output
      | COMPILE =>
          compile output
      | ASSEMBLE =>
          ( compile NONE
          ; assemble output
          ; removeAssembly NONE )
      | LINK =>
          link output files
      | MAKE =>
          ( compile NONE
          ; assemble NONE
          ; link output [List.last files ^ ".o"]
          ; removeObjectCode NONE
          ; removeAssembly NONE )
    end
end handle
  Unrecognized arg => (
    print_error "lamb" ("unrecognized option `" ^ arg ^ "'") ""
  ; OS.Process.exit OS.Process.failure
  )
