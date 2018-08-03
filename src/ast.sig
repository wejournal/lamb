signature AST = sig
  datatype decl =
    TYPE of region * (region * id)
  | VAL of region * (region * id) * Type.t
  | DEF of region * (region * id) * Type.t option * TypedTerm.t

  type t = decl list
end
