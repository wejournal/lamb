structure ImplicitTypedTerm :> IMPLICIT_TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t option * t

  fun implicit (Term.VAR x) = VAR x
    | implicit (Term.APP (t, u)) = APP (implicit t, implicit u)
    | implicit (Term.ABS (x, t)) = ABS (x, NONE, implicit t)

  fun erase (VAR x) = Term.VAR x
    | erase (APP (t, u)) = Term.APP (erase t, erase u)
    | erase (ABS (x, _, t)) = Term.ABS (x, erase t)

  fun show (VAR x) = x
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS (x, NONE, t)) = "(^" ^ x ^ "." ^ show t ^ ")"
    | show (ABS (x, SOME T, t)) = "(^" ^ x ^ ":" ^ Type.show T ^ "." ^ show t ^ ")"
end
