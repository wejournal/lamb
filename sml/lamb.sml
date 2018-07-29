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
  val colno = String.size line1
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
              ConstraintTyped.compileSystemV t
          | WINDOWS =>
              ConstraintTyped.compileMicrosoft t)
      | UNTYPED =>
          (case target of
            LINUX =>
              Untyped.compileSystemV (TypedTerm.erase t)
          | WINDOWS =>
              Untyped.compileMicrosoft (TypedTerm.erase t)))
  | EVAL =>
      (case typing of
        TYPED =>
          ConstraintTyped.eval t
      | UNTYPED =>
          Untyped.eval (TypedTerm.erase t))
  | INFER =>
      ConstraintTyped.infer t
end handle
  Unrecognized opt =>
    TextIO.output (TextIO.stdErr, "\027[1m:lamb:\027[0m \027[1;31merror:\027[0m \027[1munrecognized option `" ^ opt ^ "'\027[0m\n")
| Lexing.LexError => let
    val i = !Lexing.UserDeclarations.pos
    val j = i + 1
  in
    print_error s ("unrecognized character `" ^ str (String.sub (s, i)) ^ "'", i, j)
  end
| Parsing.ParseError =>
    ()
