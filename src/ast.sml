structure AST :> AST = struct
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

  fun erase (VAR x) = Term.VAR x
    | erase (APP (r, (e1, e2))) = Term.APP (r, (erase e1, erase e2))
    | erase (ABS (r, (x, _, e))) = Term.ABS (r, (x, erase e))
    | erase (LET (r, (x, _, e1, e2))) = Term.APP (r, (Term.ABS (r, (x, erase e2)), erase e1))
end
