structure Tokens = Tokens
type pos = unit
type svalue = Tokens.svalue
type ('a, 'b) token = ('a, 'b) Tokens.token
type lexresult = (svalue, pos) token
fun eof () = Tokens.EOF ((), ())

fun unescapeChar "'\\t'" = #"\t"
  | unescapeChar "'\\n'" = #"\n"
  | unescapeChar "'\\v'" = #"\v"
  | unescapeChar "'\\f'" = #"\f"
  | unescapeChar "'\\r'" = #"\r"
  | unescapeChar s = String.sub (s, String.size s - 2)
  
fun unescapeCharList nil = nil
  | unescapeCharList (#"\\" :: #"t" :: cs) = #"\t" :: unescapeCharList cs
  | unescapeCharList (#"\\" :: #"n" :: cs) = #"\n" :: unescapeCharList cs
  | unescapeCharList (#"\\" :: #"v" :: cs) = #"\v" :: unescapeCharList cs
  | unescapeCharList (#"\\" :: #"f" :: cs) = #"\f" :: unescapeCharList cs
  | unescapeCharList (#"\\" :: #"r" :: cs) = #"\r" :: unescapeCharList cs
  | unescapeCharList (#"\\" :: c :: cs) = c :: unescapeCharList cs
  | unescapeCharList (c :: s) = c :: unescapeCharList s

fun unescapeString s = String.implode (unescapeCharList (String.explode s))

%%
%header (functor Lexing(structure Tokens : Parsing_TOKENS));
space = [\t\n\r\ ];
digit = [0-9];
alpha = [A-Z_a-z];
%%

{space}+ => (lex());
"--"[^\n]*\n => (lex());
"'" => (Tokens.QUOTE ((), ()));
"(" => (Tokens.LPAREN ((), ()));
")" => (Tokens.RPAREN ((), ()));
"->" => (Tokens.ARROW ((), ()));
"." => (Tokens.DOT ((), ()));
":" => (Tokens.COLON ((), ()));
":=" => (Tokens.COLONEQ ((), ()));
"^" => (Tokens.LAMBDA ((), ()));
"in" => (Tokens.IN ((), ()));
"let" => (Tokens.LET ((), ()));
{digit}+ => (Tokens.NAT (Option.valOf (StringCvt.scanString (Word64.scan StringCvt.DEC) yytext), (), ()));
"'"("\\"?)."'" => (Tokens.CHAR (unescapeChar yytext, (), ()));
"\""([^\\\"]|"\\".)*"\"" => (Tokens.STRING (unescapeString (String.substring (yytext, 1, String.size yytext - 2)), (), ()));
{alpha}({alpha}|{digit})* => (Tokens.ID (yytext, (), ()));
