structure Tokens = Tokens
type pos = unit
type svalue = Tokens.svalue
type ('a, 'b) token = ('a, 'b) Tokens.token
type lexresult = (svalue, pos) token
fun eof () = Tokens.EOF ((), ())

%%
%header (functor LazyKLexing(structure Tokens : LazyKParsing_TOKENS));
space = [\r\n\ \t];
%%

{space}+ => (lex());
"I" => (Tokens.CAPITAL_I ((), ()));
"i" => (Tokens.SMALL_I ((), ()));
"K" => (Tokens.CAPITAL_K ((), ()));
"k" => (Tokens.SMALL_K ((), ()));
"S" => (Tokens.CAPITAL_S ((), ()));
"s" => (Tokens.SMALL_S ((), ()));
"`" => (Tokens.BACKQUOTE ((), ()));
"*" => (Tokens.STAR ((), ()));
"(" => (Tokens.LPAREN ((), ()));
")" => (Tokens.RPAREN ((), ()));
"0" => (Tokens.ZERO ((), ()));
"1" => (Tokens.ONE ((), ()));
. => (lex());
