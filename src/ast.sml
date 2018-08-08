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

  fun erase (VAR (r, x)) = Term.VAR (r, x)
    | erase (APP (r, (t, u))) = Term.APP (r, (erase t, erase u))
    | erase (ABS (r, ((r', x), _, t))) = Term.ABS (r, ((r', x), erase t))
    | erase (LET (r, ((r', x), _, t, u))) = Term.APP (r, (Term.ABS (r, ((r', x), erase u)), erase t))
end
