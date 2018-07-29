structure DeBruijnIndexedTerm :> DE_BRUIJN_INDEXED_TERM = struct
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of region * id

  local
    fun index' i _ nil = NONE
      | index' i x (y :: ys) = if x = y then SOME i else index' (i + 1) x ys

    fun index x env = index' 0 x env

    fun compile' env (Term.VAR (r, x)) =
          (case index x env of NONE =>
              raise NotInScope (r, x)
          | SOME i =>
              VAR i)
      | compile' env (Term.APP (_, t, u)) =
          APP (compile' env t, compile' env u)
      | compile' env (Term.ABS (_, (_, x), t)) =
          ABS (compile' (x :: env) t)
  in
    val compile = compile' nil
  end

  fun show (VAR i) = Int.toString i
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS t) = "(^ " ^ show t ^ ")"
end
