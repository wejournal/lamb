structure ParsingLrVals = ParsingLrValsFun(structure Token = LrParser.Token)
structure Lexing = Lexing(structure Tokens = ParsingLrVals.Tokens)
structure Parsing =
  Join(
    structure LrParser = LrParser
    structure ParserData = ParsingLrVals.ParserData
    structure Lex = Lexing)

exception Unrecognized of string
datatype typing = TYPED | UNTYPED
datatype doing = COMPILE | EVAL | INFER
datatype target = LINUX | WINDOWS

fun options nil = { typing = TYPED, doing = COMPILE, target = LINUX }
  | options ("-u" :: opts) = let
      val opts = options opts
    in
      { typing = UNTYPED
      , doing = case #doing opts of INFER => EVAL | doing => doing
      , target = #target opts }
    end
  | options ("--untyped" :: opts) = let
      val opts = options opts
    in
      { typing = UNTYPED
      , doing = case #doing opts of INFER => EVAL | doing => doing
      , target = #target opts }
    end
  | options ("-t" :: opts) = let
      val opts = options opts
    in
      { typing = TYPED, doing = #doing opts, target = #target opts }
    end
  | options ("--typed" :: opts) = let
      val opts = options opts
    in
      { typing = TYPED, doing = #doing opts, target = #target opts }
    end
  | options ("-e" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = EVAL, target = #target opts }
    end
  | options ("--eval" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = EVAL, target = #target opts }
    end
  | options ("-c" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = COMPILE, target = #target opts }
    end
  | options ("--compile" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = COMPILE, target = #target opts }
    end
  | options ("-i" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = COMPILE, target = #target opts }
    end
  | options ("--infer" :: opts) = let
      val opts = options opts
    in
      { typing = TYPED, doing = INFER, target = #target opts }
    end
  | options ("--target" :: "linux" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = #doing opts, target = LINUX }
    end
  | options ("--target" :: "windows" :: opts) = let
      val opts = options opts
    in
      { typing = #typing opts, doing = #doing opts, target = WINDOWS }
    end
  | options (opt :: _) =
      raise Unrecognized opt

fun check t = let
  val (t', T) = Inferring.infer t
  val r = Type.region T
  val n = Type.VAR (r, "n")
  val a = Type.VAR (r, "a")
  val nat = Type.ARR (r, Type.ARR (r, n, n), Type.ARR (r, n, n))
  val stdin = Type.ARR (r, Type.ARR (r, nat, Type.ARR (r, a, a)), Type.ARR (r, a, a))
  val N = Type.CON (r, "N")
  val A = Type.CON (r, "A")
  val NAT = Type.ARR (r, Type.ARR (r, N, N), Type.ARR (r, N, N))
  val stdout = Type.ARR (r, Type.ARR (r, NAT, Type.ARR (r, A, A)), Type.ARR (r, A, A))
  val U = Type.ARR (r, stdin, stdout)
  val S = Inferring.unify [(T, U)]
in
  ()
end

fun compileSystemV t = let
  val u = DeBruijnIndexedTerm.compile t
  val c = KrivineMachine.compile u
  val s = SystemVCompiler.compile (SystemVCompiler.new ()) "lamb_main" c
in
  TextIO.output (TextIO.stdOut, ".globl\tlamb_main\n" ^ s)
end

fun compileMicrosoft t = let
  val u = DeBruijnIndexedTerm.compile t
  val c = KrivineMachine.compile u
  val s = MicrosoftCompiler.compile (MicrosoftCompiler.new ()) "lamb_main" c
in
  TextIO.output (TextIO.stdOut, ".globl\tlamb_main\n" ^ s)
end

fun eval t = let
  val u = DeBruijnIndexedTerm.compile t
  val c = KrivineMachine.compile u
  val thunk = KrivineMachine.eval c
in
  TextIO.output (TextIO.stdOut, Term.show t ^ "\n  = " ^ KrivineMachine.showThunk thunk ^ "\n")
end

fun infer t = let
  val (t', T) = Inferring.infer t
in
  TextIO.output (TextIO.stdOut, TypedTerm.show t' ^ "\n  : " ^ Type.show T ^ "\n")
end

val lines = String.fields (fn c => c = #"\n")

fun split i j s = let
  val s1 = String.substring (s, 0, i)
  val s2 = String.substring (s, i, j - i)
  val s3 = String.extract (s, j, NONE)
in
  (s1, s2, s3)
end

fun print_error s (msg, i, j) = let
  val (s1, s2, s3) = split i j s
  val lines1 = lines s1
  val lines2 = lines s2
  val lines3 = lines s3
  val line1 = List.last lines1
  val lineno = List.length lines1
  val colno = String.size line1 + 1
in
  TextIO.output (TextIO.stdErr, "\027[1m<stdin>:" ^ Int.toString lineno ^ ":" ^ Int.toString colno ^ ":\027[0m \027[1;31merror: \027[0m\027[1m" ^ msg ^ "\027[0m\n")
; case lines2 of
    [line2] => let
      val line3 = List.hd lines3
      val line = line1 ^ "\027[4m" ^ line2 ^ "\027[0m" ^ line3
    in
      TextIO.output (TextIO.stdErr, line ^ "\n")
    end
  | _ => let
      val line = line1 ^ "\027[4m" ^ List.hd lines2 ^ "\027[0m"
    in
      TextIO.output (TextIO.stdErr, line ^ "\n")
    end
end

val {typing, doing, target} = options (CommandLine.arguments())
val s = TextIO.inputAll TextIO.stdIn

val () = let
  val read = ref false
  val lexer = Parsing.makeLexer (fn _ => if !read then "" else (read := true; s))
  val (t, lexer') = Parsing.parse (0, lexer, print_error s, ())
in
  case doing of
    COMPILE =>
      (case typing of
        TYPED =>
          (case target of
            LINUX =>
              (check t; compileSystemV (TypedTerm.erase t))
          | WINDOWS =>
              (check t; compileMicrosoft (TypedTerm.erase t)))
      | UNTYPED =>
          (case target of
            LINUX =>
              compileSystemV (TypedTerm.erase t)
          | WINDOWS =>
              compileMicrosoft (TypedTerm.erase t)))
  | EVAL =>
      (case typing of
        TYPED =>
          (check t; eval (TypedTerm.erase t))
      | UNTYPED =>
          eval (TypedTerm.erase t))
  | INFER =>
      infer t
end handle
  Unrecognized opt =>
    TextIO.output (TextIO.stdErr, "\027[1m:lamb:\027[0m \027[1;31merror:\027[0m \027[1munrecognized option `" ^ opt ^ "'\027[0m\n")
| Lexing.LexError => let
    val i = !Lexing.UserDeclarations.cursor
    val j = i + 1
  in
    print_error s ("unrecognized character `" ^ str (String.sub (s, i)) ^ "'", i, j)
  end
| Parsing.ParseError =>
    ()
| DeBruijnIndexedTerm.NotInScope ((i, j), x) =>
    print_error s ("not in scope: " ^ x, i, j)
| Inferring.NotInScope ((i, j), x) =>
    print_error s ("not in scope: " ^ x, i, j)
| Inferring.Cyclic (((i, j), x), T) =>
    print_error s ("cyclic: '" ^ x ^ " in " ^ Type.show T, i, j)
| Inferring.Incompatible (T, U) => let
    val (i, j) = Type.region T
  in
    print_error s ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U, i, j)
  end
