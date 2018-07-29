# Lamb

An implementation of Lambda Calculus.

## Language Specification

### Lexicon

*lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `in` | `let` | **NAT** | **CHAR** | **STRING** | **ID**

where **NAT**, **CHAR**, **STRING** and **ID** are classes of lexemes.
the classes are defined by regular expressions.

- **SPACE**: /[\t\n\r ]+/
- **NAT**: /[0-9]+/
- **CHAR**: /'\\?.'/
- **STRING**: /"([^\\"]|\\.)*"/
- **ID**: /[A-Z_a-z][A-Z_a-z0-9]+/

the **SPACE** is skipped by lexer.

### Grammar

*program* ::= *exp*

*ty*: *atty* | *atty* `->` *ty*

*atty* ::= `'` **ID** | **ID** | `(` *ty* `)`

*tyopt* ::= ε | `:` *ty*

*exp* ::= *atexp* | `^` **ID** *tyopt* `.` *exp* | `let` **ID** *tyopt* `:=` *exp* `in` *exp*

*atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`
