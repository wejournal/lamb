structure Inferring :> INFERRING = struct
  type t = int ref
  type constraint = Type.t * Type.t

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; "_" ^ Int.toString i
  end

  fun generalize boundedVars suffix (Type.VAR (r, x)) = Type.VAR (r, x ^ suffix)
    | generalize boundedVars suffix (Type.CON (r, x)) =
        if List.exists (fn (_, y) => x = y) boundedVars then
          Type.CON (r, x)
        else
          Type.VAR (r, x ^ suffix)
    | generalize boundedVars suffix (Type.ARR (r, T, U)) = Type.ARR (r, generalize boundedVars suffix T, generalize boundedVars suffix U)

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C

  fun substTypedTerm S (TypedTerm.VAR (r, x)) = TypedTerm.VAR (r, x)
    | substTypedTerm S (TypedTerm.APP (r, t, u)) = TypedTerm.APP (r, substTypedTerm S t, substTypedTerm S u)
    | substTypedTerm S (TypedTerm.ABS (r, (r', x), NONE, t)) = TypedTerm.ABS (r, (r', x), NONE, substTypedTerm S t)
    | substTypedTerm S (TypedTerm.ABS (r, (r', x), SOME T, t)) = TypedTerm.ABS (r, (r', x), SOME (Type.subst S T), substTypedTerm S t)
    | substTypedTerm S (TypedTerm.LET (r, (r', x), NONE, t, u)) = TypedTerm.LET (r, (r', x), NONE, substTypedTerm S t, substTypedTerm S u)
    | substTypedTerm S (TypedTerm.LET (r, (r', x), SOME T, t, u)) = TypedTerm.LET (r, (r', x), SOME (Type.subst S T), substTypedTerm S t, substTypedTerm S u)

  fun substEnv S e = map (fn (x, T) => (x, Type.subst S T)) e

  exception NotInScope of region * id
  exception Cyclic of (region * id) * Type.t
  exception Incompatible of Type.t * Type.t

  fun constraint_type fresh polyVars e (TypedTerm.VAR (r, x)) =
      (case List.find (fn (y, _) => x = y) e of
        NONE =>
          raise NotInScope (r, x)
      | SOME (_, T) => let
          val polyVars' = List.filter (fn y => List.exists (fn z => y = z) polyVars) (Type.FV T)
          val S = map (fn (_, y) => (y, Type.VAR (r, gensym fresh))) polyVars'
        in
          (TypedTerm.VAR (r, x), Type.subst S T, nil)
        end)
    | constraint_type fresh polyVars e (TypedTerm.APP (r, t, u)) = let
        val (t', T, C) = constraint_type fresh polyVars e t
        val (u', U, C') = constraint_type fresh polyVars e u
        val V = Type.VAR (r, gensym fresh)
      in
        (TypedTerm.APP (r, t', u'), V, (T, Type.ARR (r, U, V)) :: C @ C')
      end
    | constraint_type fresh polyVars e (TypedTerm.ABS (r, (r', x), NONE, t)) = let
        val T = Type.VAR (r', gensym fresh)
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh polyVars e' t
      in
        (TypedTerm.ABS (r, (r', x), SOME T, t'), Type.ARR (r, T, U), C)
      end
    | constraint_type fresh polyVars e (TypedTerm.ABS (r, (r', x), SOME T, t)) = let
        val e' = (x, T) :: e
        val (t', U, C) = constraint_type fresh polyVars e' t
      in
        (TypedTerm.ABS (r, (r', x), SOME T, t'), Type.ARR (r, T, U), C)
      end
    | constraint_type fresh polyVars e (TypedTerm.LET (r, (r', x), NONE, t, u)) = let
        val (t', T, C) = constraint_type fresh polyVars e t
        val S = unify C
        val (t', T, C, e) = (substTypedTerm S t', Type.subst S T, substConstraints S C, substEnv S e)
        val boundedVars = List.concat (map (Type.BV o #2) e)
        val T = generalize boundedVars (gensym fresh) T
        val monoVars = List.concat (map (Type.FV o #2) e)
        val polyVars' = List.filter (fn y => not (List.exists (fn z => y = z) monoVars)) (Type.FV T) @ polyVars
        val e' = (x, T) :: e
        val (u', U, C') = constraint_type fresh polyVars' e' u
      in
        (TypedTerm.LET (r, (r', x), SOME T, t', u'), U, C @ C')
      end
    | constraint_type fresh polyVars e (TypedTerm.LET (r, (r', x), SOME T, t, u)) = let
        val (t', T', C) = constraint_type fresh polyVars e t
        val S = unify ((T, T') :: C)
        val (t', T, C, e) = (substTypedTerm S t', Type.subst S T, substConstraints S C, substEnv S e)
        val boundedVars = List.concat (map (Type.BV o #2) e)
        val T = generalize boundedVars (gensym fresh) T
        val monoVars = List.concat (map (Type.FV o #2) e)
        val polyVars' = List.filter (fn y => not (List.exists (fn z => y = z) monoVars)) (Type.FV T) @ polyVars
        val e' = (x, T) :: e
        val (u', U, C') = constraint_type fresh polyVars' e' u
      in
        (TypedTerm.LET (r, (r', x), SOME T, t', u'), U, C @ C')
      end
  and unify nil = nil
    | unify ((T, U) :: C) =
        if Type.eq T U then
          unify C
        else
          (case (T, U) of
            (Type.VAR (r, x), _) =>
              if List.exists (fn (_, y) => x = y) (Type.FV U) then
                raise Cyclic ((r, x), U)
              else let
                val S = [(x, U)]
              in
                Type.compose (unify (substConstraints S C)) S
              end
          | (_, Type.VAR (r, y)) =>
              if List.exists (fn (_, x) => x = y) (Type.FV T) then
                raise Cyclic ((r, y), T)
              else let
                val S = [(y, T)]
              in
                Type.compose (unify (substConstraints S C)) S
              end
          | (Type.ARR (r, T1, T2), Type.ARR (r', U1, U2)) =>
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
