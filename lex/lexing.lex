structure Tokens = Tokens
type pos = int
type svalue = Tokens.svalue
type ('a, 'b) token = ('a, 'b) Tokens.token
type lexresult = (svalue, pos) token

val pos = ref 0

fun position yytext = let
  val i = !pos
in
  pos := !pos + String.size yytext
; (i, !pos)
end

fun eof () = Tokens.EOF (!pos, !pos)

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

{space}+ => (position yytext; lex());
"--"[^\n]*\n => (lex());
"'" => (Tokens.QUOTE (position yytext));
"(" => (Tokens.LPAREN (position yytext));
")" => (Tokens.RPAREN (position yytext));
"->" => (Tokens.ARROW (position yytext));
"." => (Tokens.DOT (position yytext));
":" => (Tokens.COLON (position yytext));
":=" => (Tokens.COLONEQ (position yytext));
"^" => (Tokens.LAMBDA (position yytext));
"in" => (Tokens.IN (position yytext));
"let" => (Tokens.LET (position yytext));

{digit}+ => (let
  val (i, j) = position yytext
in
  Tokens.NAT (Option.valOf (StringCvt.scanString (Word64.scan StringCvt.DEC) yytext), i, j)
end);

"'"("\\"?)."'" => (let
  val (i, j) = position yytext
in
  Tokens.CHAR (unescapeChar yytext, i, j)
end);

"\""([^\\\"]|"\\".)*"\"" => (let
  val (i, j) = position yytext
in
  Tokens.STRING (unescapeString (String.substring (yytext, 1, String.size yytext - 2)), i, j)
end);

{alpha}({alpha}|{digit})* => (let
  val (i, j) = position yytext
in
  Tokens.ID (yytext, i, j)
end);
