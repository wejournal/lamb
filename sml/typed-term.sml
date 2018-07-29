structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t * t
  | LET of id * Type.t * t * t

  fun erase (VAR x) = Term.VAR x
    | erase (APP (t, u)) = Term.APP (erase t, erase u)
    | erase (ABS (x, _, t)) = Term.ABS (x, erase t)
    | erase (LET (x, _, t, u)) = Term.APP (Term.ABS (x, erase u), erase t)

  fun show (VAR x) = x
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS (x, T, t)) = "(^" ^ x ^ ":" ^ Type.show T ^ "." ^ show t ^ ")"
    | show (LET (x, T, t, u)) = "let " ^ x ^ " : " ^ Type.show T ^ " := " ^ show t ^ " in " ^ show u
end
