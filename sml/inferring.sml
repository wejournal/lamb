structure Inferring :> INFERRING = struct
  type t = int ref
  type constraint = Type.t * Type.t

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; Int.toString i
  end

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C

  fun substTypedTerm S (TypedTerm.VAR x) = TypedTerm.VAR x
    | substTypedTerm S (TypedTerm.APP (t, u)) = TypedTerm.APP (substTypedTerm S t, substTypedTerm S u)
    | substTypedTerm S (TypedTerm.ABS (x, NONE, t)) = TypedTerm.ABS (x, NONE, substTypedTerm S t)
    | substTypedTerm S (TypedTerm.ABS (x, SOME T, t)) = TypedTerm.ABS (x, SOME (Type.subst S T), substTypedTerm S t)
    | substTypedTerm S (TypedTerm.LET (x, NONE, t, u)) = TypedTerm.LET (x, NONE, substTypedTerm S t, substTypedTerm S u)
    | substTypedTerm S (TypedTerm.LET (x, SOME T, t, u)) = TypedTerm.LET (x, SOME (Type.subst S T), substTypedTerm S t, substTypedTerm S u)

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun constraint_type fresh polyVars e (TypedTerm.VAR x) =
      (case List.find (fn (y, _) => x = y) e of
        NONE =>
          raise NotInScope x
      | SOME (_, T) => let
          val polyVars' = List.filter (fn y => List.exists (fn z => y = z) polyVars) (Type.FV T)
          val S = map (fn y => (y, Type.VAR (gensym fresh))) polyVars'
        in
          (TypedTerm.VAR x, Type.subst S T, nil)
        end)
    | constraint_type fresh polyVars e (TypedTerm.APP (t, u)) = let
        val (t', T, C) = constraint_type fresh polyVars e t
        val (u', U, C') = constraint_type fresh polyVars e u
        val V = Type.VAR (gensym fresh)
      in
        (TypedTerm.APP (t', u'), V, (T, Type.ARR (U, V)) :: C @ C')
      end
    | constraint_type fresh polyVars e (TypedTerm.ABS (x, NONE, t)) = let
        val T = Type.VAR (gensym fresh)
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh polyVars e' t
      in
        (TypedTerm.ABS (x, SOME T, t'), Type.ARR (T, U), C)
      end
    | constraint_type fresh polyVars e (TypedTerm.ABS (x, SOME T, t)) = let
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh polyVars e' t
      in
        (TypedTerm.ABS (x, SOME T, t'), Type.ARR (T, U), C)
      end
    | constraint_type fresh polyVars e (TypedTerm.LET (x, NONE, t, u)) = let
        val (t', T, C) = constraint_type fresh polyVars e t
        val S = unify C
        val (t', T, C) = (substTypedTerm S t', Type.subst S T, substConstraints S C)
        val monoVars = List.concat (map (Type.FV o #2) e)
        val polyVars' = List.filter (fn y => not (List.exists (fn z => y = z) monoVars)) (Type.FV T) @ polyVars
        val e' = (x, T) :: e
        val (u', U, C') = constraint_type fresh polyVars' e' u
      in
        (TypedTerm.LET (x, SOME T, t', u'), U, C @ C')
      end
    | constraint_type fresh polyVars e (TypedTerm.LET (x, SOME T, t, u)) = let
        val (t', T', C) = constraint_type fresh polyVars e t
        val S = unify ((T, T') :: C)
        val (t', T, C) = (substTypedTerm S t', Type.subst S T, substConstraints S C)
        val monoVars = List.concat (map (Type.FV o #2) e)
        val polyVars' = List.filter (fn y => not (List.exists (fn z => y = z) monoVars)) (Type.FV T) @ polyVars
        val e' = (x, T) :: e
        val (u', U, C') = constraint_type fresh polyVars' e' u
      in
        (TypedTerm.LET (x, SOME T, t', u'), U, C @ C')
      end
  and unify nil = nil
    | unify ((T, U) :: C) =
        if T = U then
          unify C
        else
          (case (T, U) of
            (Type.VAR x, _) =>
              if List.exists (fn y => x = y) (Type.FV U) then
                raise Cyclic (x, U)
              else let
                val S = [(x, U)]
              in
                Type.compose (unify (substConstraints S C)) S
              end
          | (_, Type.VAR y) =>
              if List.exists (fn x => x = y) (Type.FV T) then
                raise Cyclic (y, T)
              else let
                val S = [(y, T)]
              in
                Type.compose (unify (substConstraints S C)) S
              end
          | (Type.ARR (T1, T2), Type.ARR (U1, U2)) =>
              unify ((T1, U1) :: (T2, U2) :: C)
          | _ =>
              raise Incompatible (T, U))

  fun infer t = let
    val (t', T, C) = constraint_type (new ()) nil nil t
    val S = unify C
    val U = Type.subst S T
    val u = substTypedTerm S t'
  in
    (u, U)
  end
end
