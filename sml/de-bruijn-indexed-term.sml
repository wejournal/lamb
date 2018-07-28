structure DeBruijnIndexedTerm :> DE_BRUIJN_INDEXED_TERM = struct
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of id

  local
    fun index' i _ nil = NONE
      | index' i x (y :: ys) = if x = y then SOME i else index' (i + 1) x ys

    fun index x env = index' 0 x env

    fun compile' env (Term.VAR x) =
          (case index x env of NONE =>
              raise NotInScope x
          | SOME i =>
              VAR i)
      | compile' env (Term.APP (t, u)) =
          APP (compile' env t, compile' env u)
      | compile' env (Term.ABS (x, t)) =
          ABS (compile' (x :: env) t)
  in
    val compile = compile' nil
  end

  val B = compile Term.B
  val C = compile Term.C
  val I = compile Term.I
  val K = compile Term.K
  val S = compile Term.S
  val W = compile Term.W
  val Y = compile Term.Y
  val omega = compile Term.omega
  val Omega = compile Term.Omega

  fun show (VAR i) = Int.toString i
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS t) = "(^ " ^ show t ^ ")"
end
