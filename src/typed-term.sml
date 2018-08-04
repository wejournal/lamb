structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of region * id
  | APP of region * t * t
  | ABS of region * (region * id) * Type.t option * t
  | LET of region * (region * id) * Type.t option * t * t

  fun erase (VAR (r, x)) = Term.VAR (r, x)
    | erase (APP (r, t, u)) = Term.APP (r, erase t, erase u)
    | erase (ABS (r, (r', x), _, t)) = Term.ABS (r, (r', x), erase t)
    | erase (LET (r, (r', x), _, t, u)) = Term.APP (r, Term.ABS (r, (r', x), erase u), erase t)
end
