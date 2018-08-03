# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## Synopsis

<pre>
<b>lamb</b> [<b>--target</b> {<b>linux</b>|<b>windows</b>}] [<b>-i</b>|<b>-S</b>|<b>-c</b>|<b>-i</b>|<b>--infer</b>] [<b>-o</b> <i>FILE</i>] <i>FILE</i><b>.lam</b>
</pre>

## Prerequisites

*Required* commands:

- mlton
- mlyacc
- mllex
- gcc

*Optional* commands:

- x86_64-w64-mingw32-gcc (for windows target)

## Building

```
$ make -j8
```

## Run Examples

*After* build:

```
$ make -C examples -j8 TARGET=linux
$ examples/hello
hello world
```

```
# x86_64-w64-mingw32-gcc is required.
$ make -C examples -j8 TARGET=windows
# Copy examples/hello.exe to your own windows and run it.
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

Lamb has call-by-name semantics.
For example, in the following program,
the stdin (the first argument) is not evaluated.
Therefore, the program reads no input, writes "hello world\n" to the stdout and terminates.

<pre>
<b>let</b> K := ^x. ^_. x <b>in</b>
  K("hello world\n")
</pre>

### Type System

#### Type Inference

Lamb programs are statically typed, but you don't need to write types.
The type of the following program is automatically inferred to be `'a -> 'a`.

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I
</pre>

#### Let-Polymorphism

Lamb supports let-polymorphism.
Therefore, the following program is valid.

<pre>
<b>let</b> I := ^x. x <b>in</b>
  I I
</pre>

*Note*: In a monomorphic language, `I I` is invalid,
because `^x. x x` would also become valid if that expression were valid.

### x64 Code Generation

Lamb supports x64 code generation by default. For example, the following command compiles `foo.lam` to `foo.s`.

```
$ lamb -S -o foo.s foo.lam
```

To generate executables:

- Use `as` and `ld`. It's hard.
- Use `gcc`. It's easy.

We recommend you use `gcc`.
But you can use `as` and `ld`.
If you use `as` and `ld`, you need to link the libc manually.

## Language Specification

### Lexicon

- *lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `def` | `in` | `let` | `val` | **NAT** | **CHAR** | **STRING** | **ID**

Where **NAT**, **CHAR**, **STRING** and **ID** are classes of lexemes.
The classes are defined by regular expressions.

- **SPACE**: `/[\t\n\r ]+/`
- **COMMENT**: `/--[^\n]*\n/`
- **NAT**: `/[0-9]+/`
- **CHAR**: `/'\\?.'/`
- **STRING**: `/"([^\\"]|\\.)*"/`
- **ID**: `/[A-Z_a-z][A-Z_a-z0-9]+/`

**SPACE** and **COMMENT** are ignored by lexers.

### Grammar

- *program* ::= *decls*
- *decls* ::= ε | *decl* *decls*
- *decl* ::= `val` **ID** `:` *ty* | `def` **ID** *tyopt* `:=` *exp*
- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`
- *tyopt* ::= ε | `:` *ty*
- *exp* ::= *atexp* | `^` **ID** *tyopt* `.` *exp* | `let` **ID** *tyopt* `:=` *exp* `in` *exp*
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

### Informal Semantics

A Lamb program is a function from a string to a string,
where a string is represented as a church list of church numbers.
For example, `^x.x` is a valid Lamb program, reads all input from the stdin and writes they to the stdout.

**NAT**, **CHAR** and **STRING** are shorthands for terms.

- **NAT** is a shorthand for a church number. For example, `0` is a shorthand for `^x. ^y. y`
- **CHAR** is a shorthand for a church number. The difference between **NAT** and **CHAR** is simply the notation.
- **STRING** is a shorthand for a church list of church numbers.

## License

GPLv3.
