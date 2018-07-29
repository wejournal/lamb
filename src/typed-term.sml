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

  local
    fun indent s = let
      val lines = String.fields (fn ch => ch = #"\n") s
    in
      concat (map (fn l => "  " ^ l ^ "\n") lines)
    end
  in
    fun show (VAR (_, x)) = x
      | show (APP (_, t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
      | show (ABS (_, (_, x), NONE, t)) = "(^" ^ x ^ "." ^ show t ^ ")"
      | show (ABS (_, (_, x), SOME T, t)) = "(^" ^ x ^ ":" ^ Type.show T ^ "." ^ show t ^ ")"
      | show (LET (_, (_, x), NONE, t, u)) = "let " ^ x ^ " :=\n" ^ indent (show t) ^ " in\n" ^ show u
      | show (LET (_, (_, x), SOME T, t, u)) = "let " ^ x ^ " : " ^ Type.show T ^ " :=\n" ^ indent (show t) ^ " in\n" ^ show u
  end
end
