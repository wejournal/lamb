signature AST = sig
  datatype exp =
    VAR of id
  | APP of (exp * exp) node
  | ABS of (id * Type.t option * exp) node
  | LET of (id * Type.t option * exp * exp) node

  datatype decl =
    TYPE of id node
  | VAL of (id * Type.t) node
  | DEF of (id * Type.t option * exp) node

  type program = decl list

  val erase : exp -> Term.t
end
