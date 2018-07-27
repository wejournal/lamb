structure ImplicitTypedTerm :> IMPLICIT_TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t option * t
  | LET of id * Type.t option * t * t

  fun subst x t (VAR y) =
        if x = y then
          t
        else
          VAR y
    | subst x t (APP (u, u')) =
        APP (subst x t u, subst x t u')
    | subst x t (ABS (y, Topt, u)) =
        if x = y then
          ABS (y, Topt, u)
        else
          ABS (y, Topt, subst x t u)
    | subst x t (LET (y, Topt, u, u')) =
        if x = y then
          LET (y, Topt, subst x t u, u')
        else
          LET (y, Topt, subst x t u, subst x t u')

  fun implicit (Term.VAR x) = VAR x
    | implicit (Term.APP (t, u)) = APP (implicit t, implicit u)
    | implicit (Term.ABS (x, t)) = ABS (x, NONE, implicit t)

  fun erase (VAR x) = Term.VAR x
    | erase (APP (t, u)) = Term.APP (erase t, erase u)
    | erase (ABS (x, _, t)) = Term.ABS (x, erase t)
    | erase (LET (x, _, t, u)) = Term.APP (Term.ABS (x, erase u), erase t)

  fun show (VAR x) = x
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS (x, NONE, t)) = "(^" ^ x ^ "." ^ show t ^ ")"
    | show (ABS (x, SOME T, t)) = "(^" ^ x ^ ":" ^ Type.show T ^ "." ^ show t ^ ")"
    | show (LET (x, NONE, t, u)) = "let " ^ x ^ " := " ^ show t ^ " in " ^ show u
    | show (LET (x, SOME T, t, u)) = "let " ^ x ^ " : " ^ Type.show T ^ " := " ^ show t ^ " in " ^ show u
end
