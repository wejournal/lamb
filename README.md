# Lamb

A statically typed and lazy evaluated implementation of Lambda Calculus.

## SYNOPSIS

<pre><code><strong>lamb</strong> [<strong>--target</strong> {<strong>linux</strong>|<strong>windows</strong>}] [<strong>-i</strong>|<strong>-S</strong>|<strong>-c</strong>|<strong>--link</strong>] [<strong>--inline</strong>] [<strong>-o</strong> <em>FILE</em>] [<em>FILE</em>...] <em>FILE</em></code></pre>

## ENVIRONMENT

### LAMB_HOME

The directory where lamb is being installed. default: **~/.lamb**

## PREREQUISITES

- mlton
- mlyacc
- mllex
- gcc
- x86_64-w64-mingw32-gcc (optional)

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
- *decl* ::= `type` **ID** | `val` **ID** `:` *ty* | `def` **ID** *asc* `:=` *exp*
- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`
- *asc* ::= ε | `:` *ty*
- *exp* ::= *appexp* | `^` **ID** *asc* `.` *exp* | `let` **ID** *asc* `:=` *exp* `in` *exp*
- *appexp* ::= *atexp* | *appexp* *atexp*
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

## LICENSE

GPLv3.

## SEE ALSO

- There is an Emacs major mode for Lamb by [@zonuexe](https://github.com/zonuexe):
  https://github.com/zonuexe/lamb-mode.el
  Thank you!
