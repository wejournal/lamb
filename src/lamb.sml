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

fun inferDecl (AST.TYPE (_, (r, x)), (inferring, boundedVars, e)) =
      (inferring, (r, x) :: boundedVars, e)
  | inferDecl (AST.VAL (_, ((r, x), T)), (inferring, boundedVars, e)) = (
      checkDup (r, x) e
    ; (inferring, boundedVars, ((r, x), Inferring.generalize boundedVars (Inferring.gensym inferring) T) :: e)
    )
  | inferDecl (AST.DEF (_, ((r, x), Topt, t)), (inferring, boundedVars, e)) = let
      val (_, U) = Inferring.infer inferring (List.concat (map (Type.FV o #2) e)) e t
      val S =
        case Topt of
          NONE =>
            if x = "main" then
              Inferring.unify [(mainType r, U)]
            else
              nil
        | SOME T =>
            if x = "main" then
              Inferring.unify [(mainType r, T), (T, U)]
            else
              Inferring.unify [(T, U)]
    in
      checkDup (r, x) e
    ; (inferring, boundedVars, ((r, x), Inferring.generalize boundedVars (Inferring.gensym inferring) (Type.subst S U)) :: e)
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

  fun showMonoType i e boundedVars (Type.VAR (r, x)) = let
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
        if List.exists (fn (_, b) => x = b) boundedVars then (
          while List.exists (fn (_, b) => a ^ Int.toString (!k) = b) boundedVars do
            k := !k + 1
        ; "'" ^ a ^ Int.toString (!k)
        ) else
          "'" ^ a
      end
    | showMonoType _ _ _ (Type.CON (_, x)) =
        x
    | showMonoType i e boundedVars (Type.ARR (_, (T, U))) =
        "(" ^ showMonoType i e boundedVars T ^ " -> " ^ showMonoTypeArr i e boundedVars U ^ ")"
  and showMonoTypeArr i e boundedVars (Type.ARR (_, (T, U))) =
        showMonoType i e boundedVars T ^ " -> " ^ showMonoTypeArr i e boundedVars U
    | showMonoTypeArr i e boundedVars T =
        showMonoType i e boundedVars T
end

fun printDecl outstream (AST.TYPE (_, (r, x)), (inferring, boundedVars, e)) = (
      TextIO.output (outstream, "type " ^ x ^ "\n")
    ; (inferring, (r, x) :: boundedVars, e)
    )
  | printDecl outstream (AST.VAL (_, ((r, x), T)), (inferring, boundedVars, e)) = (
      checkDup (r, x) e
    ; TextIO.output (outstream, "val " ^ x ^ " : " ^ showTypeArr (ref 0) (ref nil) boundedVars T ^ "\n")
    ; (inferring, boundedVars, ((r, x), Inferring.generalize boundedVars (Inferring.gensym inferring) T) :: e)
    )
  | printDecl outstream (AST.DEF (_, ((r, x), Topt, t)), (inferring, boundedVars, e)) = let
      val (_, U) = Inferring.infer inferring (List.concat (map (Type.FV o #2) e)) e t
      val S =
        case Topt of
          NONE =>
            if x = "main" then
              Inferring.unify [(mainType r, U)]
            else
              nil
        | SOME T =>
            if x = "main" then
              Inferring.unify [(mainType r, T), (T, U)]
            else
              Inferring.unify [(T, U)]
      val T = Inferring.generalize boundedVars (Inferring.gensym inferring) (Type.subst S U)
    in
      checkDup (r, x) e
    ; TextIO.output (outstream, "val " ^ x ^ " : " ^ showTypeArr (ref 0) (ref nil) boundedVars T ^ "\n")
    ; (inferring, boundedVars, ((r, x), T) :: e)
    end

fun inferFile outstream (file, z0) = let
  val instream = TextIO.openIn file
  val s = TextIO.inputAll instream
  val () = TextIO.closeIn instream
  val z0 = ref z0
  val success = ref false
in
  let
    val read = ref false
    val lexer = Parsing.makeLexer (fn _ => if !read then "" else (read := true; s))
    val (decls, _) = Parsing.parse (0, lexer, fn (msg, i, j) => print_error_in_file file s (i, j) msg, ())
  in
    z0 := foldl (printDecl outstream) (!z0) decls
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
  | Inferring.NotInScope (r, x) =>
      print_error_in_file file s r ("not in scope: `" ^ x ^ "'")
  | Inferring.Cyclic ((r, x), T) => let
      val i = ref 0
      val e = ref nil
    in
      print_error_in_file file s r ("cyclic: " ^ showMonoType i e nil (Type.VAR (r, x)) ^ " in " ^ showMonoType i e nil T)
    end
  | Inferring.Incompatible (T, U) => let
      val r = Type.region T
      val i = ref 0
      val e = ref nil
    in
      print_error_in_file file s r ("incompatible types: " ^  showMonoType i e nil T ^ " and " ^ showMonoType i e nil U)
    end
  | Duplicate (r, x) =>
      print_error_in_file file s r ("duplicate variable: `" ^ x ^ "'")
; if not (!success) then
    OS.Process.exit OS.Process.failure
  else
    !z0
end handle
  IO.Io _ => (
    print_error file "no such file or directory." ""
  ; OS.Process.exit OS.Process.failure
  )

functor Main(Compiler : COMPILER) = struct
  fun compileDecl outstream (AST.TYPE _, (compiler, e)) =
        (compiler, e)
    | compileDecl outstream (AST.VAL (_, ((r, x), _)), (compiler, e)) = let
        val e' = ((r, x), 0) :: map (fn (y, i) => (y, i + 1)) e
      in
        (compiler, e')
      end
    | compileDecl outstream (AST.DEF (_, ((r, x), _, t)), (compiler, e)) = let
        val t = TypedTerm.erase t
        val t = DeBruijnIndexedTerm.compile e t
        val c = KrivineMachine.compile t
        val s' = Compiler.compile compiler (map (fn ((r, y), _) => "lamb_" ^ y) e) ("lamb_" ^ x) c
        val e' = ((r, x), 0) :: map (fn (y, i) => (y, i + 1)) e
      in
        TextIO.output (outstream, s')
      ; (compiler, e')
      end

  fun compile outstream (file, (z0, z1)) = let
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
      z0 := foldl inferDecl (!z0) decls
    ; let
        val outstream' =
          case outstream of
            NONE =>
              TextIO.openOut (file ^ ".s")
          | SOME outstream =>
              outstream
      in
        z1 := foldl (compileDecl outstream') (!z1) decls
      ; case outstream of
          NONE =>
            TextIO.closeOut outstream'
        | SOME _ =>
            ()
      ; success := true
      end
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
        print_error_in_file file s r ("cyclic: " ^ showMonoType i e nil (Type.VAR (r, x)) ^ " in " ^  showMonoType i e nil T)
      end
    | Inferring.Incompatible (T, U) => let
        val r = Type.region T
        val i = ref 0
        val e = ref nil
      in
        print_error_in_file file s r ("incompatible types: " ^  showMonoType i e nil T ^ " and " ^  showMonoType i e nil U)
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

structure SystemVMain = Main(SystemVCompiler)
structure MicrosoftMain = Main(MicrosoftCompiler)

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

      val z0 = (Inferring.new (), nil, nil)
      val z1 = (SystemVCompiler.new (), nil)

      fun infer output = let
        val outstream =
          case output of
            NONE => TextIO.stdOut
          | SOME output => TextIO.openOut output
      in
        foldl (inferFile outstream) z0 files
      ; case output of
          NONE =>
            ()
        | SOME _ =>
            TextIO.closeOut outstream
      end

      fun compile output = let
        val outstream =
          case output of
            NONE => SOME (TextIO.openOut (List.last files ^ ".s"))
          | SOME output => SOME (TextIO.openOut output)
      in
        List.foldl (SystemVMain.compile outstream) (z0, z1) files
      ; case outstream of
          NONE => ()
        | SOME outstream => TextIO.closeOut outstream
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

      val z0 = (Inferring.new (), nil,nil)
      val z1 = (MicrosoftCompiler.new (), nil)

      fun infer output = let
        val outstream =
          case output of
            NONE => TextIO.stdOut
          | SOME output => TextIO.openOut output
      in
        foldl (inferFile outstream) z0 files
      ; case output of
          NONE =>
            ()
        | SOME _ =>
            TextIO.closeOut outstream
      end

      fun compile output = let
        val outstream =
          case output of
            NONE => SOME (TextIO.openOut (List.last files ^ ".s"))
          | SOME output => SOME (TextIO.openOut output)
      in
        List.foldl (MicrosoftMain.compile outstream) (z0, z1) files
      ; case outstream of
          NONE => ()
        | SOME outstream => TextIO.closeOut outstream
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
