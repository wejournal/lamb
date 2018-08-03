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

exception Duplicate of region * id

fun checkDup (r, x) e =
  if List.exists (fn (y, _) => x = y) e then
    raise Duplicate (r, x)
  else
    ()

fun mainType r = let
  val n = Type.VAR (r, "n")
  val a = Type.VAR (r, "a")
  val nat = Type.ARR (r, Type.ARR (r, n, n), Type.ARR (r, n, n))
  val stdin = Type.ARR (r, Type.ARR (r, nat, Type.ARR (r, a, a)), Type.ARR (r, a, a))
  val N = Type.CON (r, "N")
  val A = Type.CON (r, "A")
  val NAT = Type.ARR (r, Type.ARR (r, N, N), Type.ARR (r, N, N))
  val stdout = Type.ARR (r, Type.ARR (r, NAT, Type.ARR (r, A, A)), Type.ARR (r, A, A))
in
  Type.ARR (r, stdin, stdout)
end

fun inferDecl (AST.VAL (_, (r, x), T), (inferring, e)) = (
      checkDup (r, x) e
    ; (inferring, (x, Inferring.generalize nil (Inferring.gensym inferring) T) :: e)
    )
  | inferDecl (AST.DEF (_, (r, x), Topt, t), (inferring, e)) = let
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
    ; (inferring, (x, Inferring.generalize nil (Inferring.gensym inferring) (Type.subst S U)) :: e)
    end

functor Main(Compiler : COMPILER) = struct
  fun compileDecl outstream (AST.VAL (_, (_, x), _), (compiler, e)) = let
        val e' = (x, 0) :: map (fn (y, i) => (y, i + 1)) e
      in
        (compiler, e')
      end
    | compileDecl outstream (AST.DEF (_, (_, x), _, t), (compiler, e)) = let
        val t = TypedTerm.erase t
        val t = DeBruijnIndexedTerm.compile e t
        val c = KrivineMachine.compile t
        val s' = Compiler.compile compiler (map (fn (y, _) => "lamb_" ^ y) e) ("lamb_" ^ x) c
        val e' = (x, 0) :: map (fn (y, i) => (y, i + 1)) e
      in
        TextIO.output (outstream, s')
      ; (compiler, e')
      end

  fun compile output (file, (z0, z1)) = let
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
        val output = case output of NONE => file ^ ".s" | SOME output => output
        val outstream = TextIO.openOut output
      in
        z1 := foldl (compileDecl outstream) (!z1) decls
      ; TextIO.closeOut outstream
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
    | Inferring.Cyclic ((r, x), T) =>
        print_error_in_file file s r ("cyclic: '" ^ x ^ " in " ^ Type.show T)
    | Inferring.Incompatible (T, U) => let
        val r = Type.region T
      in
        print_error_in_file file s r ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U)
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
exception Unrecognized of string

fun args nil = { target = LINUX, output = NONE, files = nil }
  | args ("--target" :: "linux" :: argv) = let
      val {target, output, files} = args argv
    in
      { target = LINUX, output = output, files = files }
    end
  | args ("--target" :: "windows" :: argv) = let
      val {target, output, files} = args argv
    in
      { target = WINDOWS, output = output, files = files }
    end
  | args ("-o" :: arg :: argv) =
      if String.size arg > 0 andalso String.sub (arg, 0) = #"-" then
        raise Unrecognized arg
      else let
        val {target, output, files} = args argv
      in
        { target = target, output = SOME arg, files = files }
      end
  | args ("--" :: files) =
      { target = LINUX, output = NONE, files = files }
  | args (arg :: argv) =
      if String.size arg > 0 andalso String.sub (arg, 0) = #"-" then
        raise Unrecognized arg
      else let
        val {target, output, files} = args argv
      in
        { target = target, output = output, files = arg :: files }
      end

structure SystemVMain = Main(SystemVCompiler)
structure MicrosoftMain = Main(MicrosoftCompiler)

val () = let
  val {target, output, files} = args (CommandLine.arguments ())
in
  case target of
    LINUX => (List.foldl (SystemVMain.compile output) ((Inferring.new (), nil), (SystemVCompiler.new (), nil)) files; ())
  | WINDOWS => (List.foldl (MicrosoftMain.compile output) ((Inferring.new (), nil), (MicrosoftCompiler.new (), nil)) files; ())
end handle
  Unrecognized arg => (
    print_error "lamb" ("unrecognized option `" ^ arg ^ "'") ""
  ; OS.Process.exit OS.Process.failure
  )
