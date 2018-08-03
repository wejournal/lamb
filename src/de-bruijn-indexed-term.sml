structure DeBruijnIndexedTerm :> DE_BRUIJN_INDEXED_TERM = struct
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of region * id

  fun compile e (Term.VAR (r, x)) =
        (case List.find (fn (y, _) => x = y) e of
          NONE =>
            raise NotInScope (r, x)
        | SOME (_, i) =>
            VAR i)
    | compile e (Term.APP (_, t, u)) =
        APP (compile e t, compile e u)
    | compile e (Term.ABS (_, (_, x), t)) =
        ABS (compile ((x, 0) :: map (fn (y, i) => (y, i + 1)) e) t)

  fun show (VAR i) = Int.toString i
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS t) = "(^ " ^ show t ^ ")"
end
