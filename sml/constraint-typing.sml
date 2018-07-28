structure ConstraintTyping :> CONSTRAINT_TYPING = struct
  type t = int ref
  type constraint = Type.t * Type.t

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; Int.toString i
  end

  local open ImplicitTypedTerm in
    fun subst fresh x FVt t (VAR y) =
          if x = y then
            t
          else
            VAR y
      | subst fresh x FVt t (APP (u, u')) =
          APP (subst fresh x FVt t u, subst fresh x FVt t u')
      | subst fresh x FVt t (ABS (y, Topt, u)) =
          if x = y then
            ABS (y, Topt, u)
          else if List.exists (fn z => y = z) FVt then let
            val z = "_" ^ gensym fresh
          in
            ABS (z, Topt, subst fresh x FVt t (subst fresh y [z] (VAR z) u))
          end else
            ABS (y, Topt, subst fresh x FVt t u)
      | subst fresh x FVt t (LET (y, Topt, u, u')) =
          if x = y then
            LET (y, Topt, subst fresh x FVt t u, u')
          else
            LET (y, Topt, subst fresh x FVt t u, subst fresh x FVt t u')
  end

  exception NotInScope of id

  fun constraint_type fresh e (ImplicitTypedTerm.VAR x) =
      (case List.find (fn (y, _) => x = y) e of
        NONE =>
          raise NotInScope x
      | SOME (_, T) =>
          (TypedTerm.VAR x, T, nil))
    | constraint_type fresh e (ImplicitTypedTerm.APP (t, u)) = let
        val (t', T, C) = constraint_type fresh e t
        val (u', U, C') = constraint_type fresh e u
        val V = Type.VAR (gensym fresh)
      in
        (TypedTerm.APP (t', u'), V, (T, Type.ARR (U, V)) :: C @ C')
      end
    | constraint_type fresh e (ImplicitTypedTerm.ABS (x, NONE, t)) = let
        val T = Type.VAR (gensym fresh)
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh e' t
      in
        (TypedTerm.ABS (x, T, t'), Type.ARR (T, U), C)
      end
    | constraint_type fresh e (ImplicitTypedTerm.ABS (x, SOME T, t)) = let
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh e' t
      in
        (TypedTerm.ABS (x, T, t'), Type.ARR (T, U), C)
      end
    | constraint_type fresh e (ImplicitTypedTerm.LET (x, NONE, t, u)) = let
        val (t', T, C) = constraint_type fresh e t
        val (u', U, C') = constraint_type fresh e (subst fresh x (ImplicitTypedTerm.FV t) t u)
      in
        (u', U, C @ C')
      end
    | constraint_type fresh e (ImplicitTypedTerm.LET (x, SOME T, t, u)) = let
        val (t', T', C) = constraint_type fresh e t
        val (u', U, C') = constraint_type fresh e (subst fresh x (ImplicitTypedTerm.FV t) t u)
      in
        (u', U, (T, T') :: C @ C')
      end
end
