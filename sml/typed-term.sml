structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t option * t
  | LET of id * Type.t option * t * t

  fun FV (VAR x) = [x]
    | FV (APP (t, u)) = FV t @ FV u
    | FV (ABS (x, _, t)) = List.filter (fn y => x = y) (FV t)
    | FV (LET (x, _, t, u)) = FV t @ List.filter (fn y => x = y) (FV u)

  fun implicit (Term.VAR x) = VAR x
    | implicit (Term.APP (t, u)) = APP (implicit t, implicit u)
    | implicit (Term.ABS (x, t)) = ABS (x, NONE, implicit t)

  fun erase (VAR x) = Term.VAR x
    | erase (APP (t, u)) = Term.APP (erase t, erase u)
    | erase (ABS (x, _, t)) = Term.ABS (x, erase t)
    | erase (LET (x, _, t, u)) = Term.APP (Term.ABS (x, erase u), erase t)

  local
    fun indent s = let
      val lines = String.fields (fn ch => ch = #"\n") s
    in
      concat (map (fn l => "  " ^ l ^ "\n") lines)
    end
  in
    fun show (VAR x) = x
      | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
      | show (ABS (x, NONE, t)) = "(^" ^ x ^ "." ^ show t ^ ")"
      | show (ABS (x, SOME T, t)) = "(^" ^ x ^ ":" ^ Type.show T ^ "." ^ show t ^ ")"
      | show (LET (x, NONE, t, u)) = "let " ^ x ^ " :=\n" ^ indent (show t) ^ " in\n" ^ show u
      | show (LET (x, SOME T, t, u)) = "let " ^ x ^ " : " ^ Type.show T ^ " :=\n" ^ indent (show t) ^ " in\n" ^ show u
  end
end
