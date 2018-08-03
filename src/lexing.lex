type pos = cursor
type svalue = Tokens.svalue
type ('a, 'b) token = ('a, 'b) Tokens.token
type lexresult = (svalue, pos) token

val cursor = ref 0

fun region yytext = let
  val i = !cursor
in
  cursor := !cursor + String.size yytext
; (i, !cursor)
end

fun eof () = Tokens.EOF (!cursor, !cursor)

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

{space}+ => (region yytext; lex());
"--"[^\n]*\n => (region yytext; lex());
"'" => (Tokens.QUOTE (region yytext));
"(" => (Tokens.LPAREN (region yytext));
")" => (Tokens.RPAREN (region yytext));
"->" => (Tokens.ARROW (region yytext));
"." => (Tokens.DOT (region yytext));
":" => (Tokens.COLON (region yytext));
":=" => (Tokens.COLONEQ (region yytext));
"^" => (Tokens.LAMBDA (region yytext));
"def" => (Tokens.DEF (region yytext));
"in" => (Tokens.IN (region yytext));
"let" => (Tokens.LET (region yytext));
"val" => (Tokens.VAL (region yytext));

{digit}+ => (let
  val (i, j) = region yytext
in
  Tokens.NAT (Option.valOf (StringCvt.scanString (LargeWord.scan StringCvt.DEC) yytext), i, j)
end);

"'"("\\"?)."'" => (let
  val (i, j) = region yytext
in
  Tokens.CHAR (unescapeChar yytext, i, j)
end);

"\""([^\\\"]|"\\".)*"\"" => (let
  val (i, j) = region yytext
in
  Tokens.STRING (unescapeString (String.substring (yytext, 1, String.size yytext - 2)), i, j)
end);

{alpha}({alpha}|{digit})* => (let
  val (i, j) = region yytext
in
  Tokens.ID (yytext, i, j)
end);
