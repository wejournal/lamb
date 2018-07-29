# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## Language Specification

### Lexicon

- *lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `in` | `let` | **NAT** | **CHAR** | **STRING** | **ID**

where **NAT**, **CHAR**, **STRING** and **ID** are classes of lexemes.
the classes are defined by regular expressions.

- **SPACE**: `/[\t\n\r ]+/`
- **COMMENT**: `/--[^\n]*\n/`
- **NAT**: `/[0-9]+/`
- **CHAR**: `/'\\?.'/`
- **STRING**: `/"([^\\"]|\\.)*"/`
- **ID**: `/[A-Z_a-z][A-Z_a-z0-9]+/`

**SPACE** and **COMMENT** are skipped by lexers.

### Grammar

- *program* ::= *exp*
- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`
- *tyopt* ::= ε | `:` *ty*
- *exp* ::= *atexp* | `^` **ID** *tyopt* `.` *exp* | `let` **ID** *tyopt* `:=` *exp* `in` *exp*
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

### Type System

#### type inference

<pre>
<b>let</b> S := ^x. ^y. ^z. x z (y z) <b>in</b>
<b>let</b> K := ^x. ^_. x <b>in</b>
  S K K
</pre>

#### let polymorphism

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I I
</pre>

### Informal Semantics

A Lamb programs is a function from a string to a string.
where a string is a church list of church numbers.
for example, `^x.x` is a valid Lamb program, reads all inputs from the stdin and writes they to the stdout.
