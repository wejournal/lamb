# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## SYNOPSIS

<pre><code><strong>lamb</strong> [<strong>--target</strong> {<strong>linux</strong>|<strong>windows</strong>}] [<strong>-i</strong>|<strong>-S</strong>|<strong>-c</strong>|<strong>--link</strong>] [<strong>-o</strong> <em>FILE</em>] [<em>FILE</em>...] <em>FILE</em></code></pre>

## ENVIRONMENT

### LAMB_HOME

The directory where lamb is being installed. default: **~/.lamb**

## PREREQUISITES

- mlton
- mlyacc
- mllex
- gcc
- x86_64-w64-mingw32-gcc

## INSTALLATION

```
$ make -j8
$ make install # to install ~/.lamb
$ export PATH="$HOME/.lamb/bin:$PATH"
```

## LANGUAGE SPECIFICATION

### Lexicon

- *lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `def` | `in` | `let` | `type` | `val` | **NAT** | **CHAR** | **STRING** | **ID**

Where **NAT**, **CHAR**, **STRING** and **ID** are classes of lexemes.
The classes are defined by regular expressions.

- **SPACE**: `/[\t\n\r ]+/`
- **COMMENT**: `/--[^\n]*\n/`
- **NAT**: `/[0-9]+/`
- **CHAR**: `/'([^\\']|\\.)'/`
- **STRING**: `/"([^\\"]|\\.)*"/`
- **ID**: `/[A-Z_a-z][A-Z_a-z0-9]*/`

**SPACE** and **COMMENT** are ignored by lexers.

### Grammar

- *program* ::= *decls*
- *decls* ::= ε | *decl* *decls*
- *decl* ::= `type` **ID** | `val` **ID** `:` *ty* | `def` **ID** *tyopt* `:=` *exp*
- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`
- *tyopt* ::= ε | `:` *ty*
- *exp* ::= *atexp* | `^` **ID** *tyopt* `.` *exp* | `let` **ID** *tyopt* `:=` *exp* `in` *exp*
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

## LICENSE

GPLv3.
