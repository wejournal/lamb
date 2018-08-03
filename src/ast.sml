structure AST :> AST = struct
  datatype decl =
    VAL of region * (region * id) * Type.t
  | DEF of region * (region * id) * Type.t option * TypedTerm.t

  type t = decl list
end
