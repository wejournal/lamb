structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * Type.t * t) node
  | LET of (id * Type.t * t * t) node

  fun erase (VAR x) = Term.VAR x
    | erase (APP (r, (e1, e2))) = Term.APP (r, (erase e1, erase e2))
    | erase (ABS (r, (x, _, e))) = Term.ABS (r, (x, erase e))
    | erase (LET (r, (x, _, e1, e2))) = Term.APP (r, (Term.ABS (r, (x, erase e2)), erase e1))
end
