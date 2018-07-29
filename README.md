# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## Examples

### Hello World

<pre>
<b>let</b> K := ^x. ^_. x <b>in</b>
  K("hello world\n")
</pre>

### Cat Program

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I
</pre>

## Features

### Lazy Evaluation

Lamb has the call-by-need semantics.

### Type System

#### Type Inference

Lamb programs are statically typed, but you don't need to write types.
The type of the following program is inferenced `'a -> 'a` automatically.

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I
</pre>

#### Let Polymorphism

Lamb supports the let polymorphism.
Therefore, the following program is valid.

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I I
</pre>

*Note*: In a monomorphic language, `I I` is invalid.
Because `^x. x x` is valid if it is valid.

## Language Specification

### Lexicon

- *lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `in` | `let` | **NAT** | **CHAR** | **STRING** | **ID**

Where **NAT**, **CHAR**, **STRING** and **ID** are classes of lexemes.
The classes are defined by regular expressions.

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

### Informal Semantics

A Lamb programs is a function from a string to a string.
Where a string is a church list of church numbers.
For example, `^x.x` is a valid Lamb program, reads all inputs from the stdin and writes they to the stdout.
