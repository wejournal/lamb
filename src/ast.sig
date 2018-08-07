signature AST = sig
  datatype decl =
    TYPE of id node
  | VAL of (id * Type.t) node
  | DEF of (id * Type.t option * TypedTerm.t) node

  type t = decl list
end
