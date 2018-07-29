# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## Synopsis

<pre>
<b>lamb</b> [<b>-t</b>|<b>--typed</b>|<b>-u</b>|<b>--untyped</b>] [<b>-c</b>|<b>--compile</b>|<b>-e</b>|<b>--eval</b>|<b>-i</b>|<b>--infer</b>] [<b>--target</b> {<b>linux</b>|<b>windows</b>}] < <i>FILE</i><b>.lam</b> > <i>FILE</i><b>.s</b>
</pre>

## Prerequisites

*Required* commands:

- gcc
- mlton
- mlyacc
- mllex

*Optional* commands:

- x86_64-w64-mingw32-gcc (for windows target)

## Building

```
make
```

## Run Examples

*After* build:

```
$ make -C examples/hello TARGET=linux
$ examples/hello/hello
hello world
```

```
# x86_64-w64-mingw32-gcc is required.
$ make -C examples/hello TARGET=windows
# Copy examples/hello/hello.exe to your own windows and run it.
```

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
For example, in the following program,
the stdin (the first argument) is not evaluated.
Therefore, the program reads no input, writes "hello world\n" to the stdout and and terminates.

<pre>
<b>let</b> K := ^x. ^_. x <b>in</b>
  K("hello world\n")
</pre>

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

### x64 Code Generation

Lamb supports x64 code generation by default. For example, the following command compiles `foo.lam` to `foo.s`.

```
lamb < foo.lam > foo.s
```

To generate executables:

- Use `as` and `ld`. It's hard.
- Use `gcc`. It's easy.

We recommend you use `gcc`.
But you can use `as` and `ld`.
If you use `as` and `ld`, you need to link the libc manually.

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

**NAT**, **CHAR** and **STRING** are shorthands for terms.

- **NAT** is a shorthand for a church number. For example, `0` is a shorthand for `^x. ^y. y`
- **CHAR** is a shorthand for a church number. The difference between **NAT** and **CHAR** is simply the notation.
- **STRING** is a shorthand for a church list of church numbers.

## License

GPLv3.
