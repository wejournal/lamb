structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * Type.t * t) node
  | LET of (id * Type.t * t * t) node

  fun erase (VAR (r, x)) = Term.VAR (r, x)
    | erase (APP (r, (t, u))) = Term.APP (r, (erase t, erase u))
    | erase (ABS (r, ((r', x), _, t))) = Term.ABS (r, ((r', x), erase t))
    | erase (LET (r, ((r', x), _, t, u))) = Term.APP (r, (Term.ABS (r, ((r', x), erase u)), erase t))
end
