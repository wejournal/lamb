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

val () = let
  val {typing, doing, target} = options (CommandLine.arguments())

  fun print_error _ = print "syntax error.\n"
  val lexer = Parsing.makeLexer (fn _ => case TextIO.inputLine TextIO.stdIn of SOME s => s | NONE => "")
  val (t, lexer') = Parsing.parse (0, lexer, print_error, ())
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
              Untyped.compileSystemV (ImplicitTypedTerm.erase t)
          | WINDOWS =>
              Untyped.compileMicrosoft (ImplicitTypedTerm.erase t)))
  | EVAL =>
      (case typing of
        TYPED =>
          ConstraintTyped.eval t
      | UNTYPED =>
          Untyped.eval (ImplicitTypedTerm.erase t))
  | INFER =>
      ConstraintTyped.infer t
end handle
  Unrecognized opt =>
    print ("unrecognized option `" ^ opt ^ "'\n")
| Parsing.ParseError =>
    print "parse error.\n"
