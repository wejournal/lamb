structure DeBruijnIndexedTerm :> DE_BRUIJN_INDEXED_TERM = struct
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of id

  fun compile e (Term.VAR (r, x)) =
        (case List.find (fn ((_, y), _) => x = y) e of
          NONE =>
            raise NotInScope (r, x)
        | SOME (_, i) =>
            VAR i)
    | compile e (Term.APP (_, (t, u))) =
        APP (compile e t, compile e u)
    | compile e (Term.ABS (_, ((r, x), t))) =
        ABS (compile (((r, x), 0) :: map (fn (y, i) => (y, i + 1)) e) t)
end
