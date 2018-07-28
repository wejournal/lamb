structure LazyKParsingLrVals = LazyKParsingLrValsFun(structure Token = LrParser.Token)
structure LazyKLexing = LazyKLexing(structure Tokens = LazyKParsingLrVals.Tokens)
structure LazyKParsing =
  Join(
    structure LrParser = LrParser
    structure ParserData = LazyKParsingLrVals.ParserData
    structure Lex = LazyKLexing)

fun print_error _ = print "syntax error.\n"
val lexer = LazyKParsing.makeLexer (fn _ => case TextIO.inputLine TextIO.stdIn of SOME s => s | NONE => "")
val (t, lexer') = LazyKParsing.parse (0, lexer, print_error, ())
val () = Untyped.compileSystemV t
