structure Inferring :> INFERRING = struct
  type constraint = Type.t * Type.t

  fun generalize boundedVars suffix (Type.VAR (r, x)) = Type.VAR (r, x ^ suffix)
    | generalize boundedVars suffix (Type.CON (r, x)) =
        if List.exists (fn (_, y) => x = y) boundedVars then
          Type.CON (r, x)
        else
          Type.VAR (r, x ^ suffix)
    | generalize boundedVars suffix (Type.ARR (r, (T, U))) = Type.ARR (r, (generalize boundedVars suffix T, generalize boundedVars suffix U))

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C

  fun substTypedTerm S (TypedTerm.VAR (r, x)) = TypedTerm.VAR (r, x)
    | substTypedTerm S (TypedTerm.APP (r, (t, u))) = TypedTerm.APP (r, (substTypedTerm S t, substTypedTerm S u))
    | substTypedTerm S (TypedTerm.ABS (r, ((r', x), T, t))) = TypedTerm.ABS (r, ((r', x), Type.subst S T, substTypedTerm S t))
    | substTypedTerm S (TypedTerm.LET (r, ((r', x), T, t, u))) = TypedTerm.LET (r, ((r', x), Type.subst S T, substTypedTerm S t, substTypedTerm S u))

  fun substEnv S e = map (fn ((r, x), T) => ((r, x), Type.subst S T)) e

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun constraint_type gensym polyVars e (AST.VAR (r, x)) =
      (case List.find (fn ((_, y), _) => x = y) e of
        NONE =>
          raise NotInScope (r, x)
      | SOME (_, T) => let
          val polyVars' = List.filter (fn (_, y) => List.exists (fn (_, z) => y = z) polyVars) (Type.FV T)
          val S = map (fn (r', y) => ((r', y), Type.VAR (r, "_" ^ Int.toString (Gensym.gensym gensym)))) polyVars'
        in
          (TypedTerm.VAR (r, x), Type.subst S T, nil)
        end)
    | constraint_type gensym polyVars e (AST.APP (r, (t, u))) = let
        val (t', T, C) = constraint_type gensym polyVars e t
        val (u', U, C') = constraint_type gensym polyVars e u
        val V = Type.VAR (r, "_" ^ Int.toString (Gensym.gensym gensym))
      in
        (TypedTerm.APP (r, (t', u')), V, (T, Type.ARR (r, (U, V))) :: C @ C')
      end
    | constraint_type gensym polyVars e (AST.ABS (r, ((r', x), Topt, t))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (r', "_" ^ Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val e' = ((r', x), T) :: e
        val (t', U, C) = constraint_type gensym polyVars e' t
      in
        (TypedTerm.ABS (r, ((r', x), T, t')), Type.ARR (r, (T, U)), C)
      end
    | constraint_type gensym polyVars e (AST.LET (r, ((r', x), Topt, t, u))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (r', "_" ^ Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val (t', T', C) = constraint_type gensym polyVars e t
        val S = unify ((T, T') :: C)
        val (t', T, C, e) = (substTypedTerm S t', Type.subst S T, substConstraints S C, substEnv S e)
        val boundedVars = List.concat (map (Type.BV o #2) e)
        val T = generalize boundedVars ("_" ^ Int.toString (Gensym.gensym gensym)) T
        val monoVars = List.concat (map (Type.FV o #2) e)
        val polyVars' = List.filter (fn (_, y) => not (List.exists (fn (_, z) => y = z) monoVars)) (Type.FV T) @ polyVars
        val e' = ((r', x), T) :: e
        val (u', U, C') = constraint_type gensym polyVars' e' u
      in
        (TypedTerm.LET (r, ((r', x), T, t', u')), U, C @ C')
      end
  and unify nil = nil
    | unify ((T, U) :: C) =
      (case (T, U) of
        (Type.VAR (r, x), Type.VAR (_, y)) =>
          if x = y then
            unify C
          else let
            val S = [((r, x), U)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (Type.VAR (r, x), _) =>
          if List.exists (fn (_, y) => x = y) (Type.FV U) then
            raise Cyclic ((r, x), U)
          else let
            val S = [((r, x), U)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (_, Type.VAR (r, y)) =>
          if List.exists (fn (_, x) => x = y) (Type.FV T) then
            raise Cyclic ((r, y), T)
          else let
            val S = [((r, y), T)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (Type.CON (r, x), Type.CON (r', y)) =>
          if x = y then
            unify C
          else
            raise Incompatible (T, U)
      | (Type.ARR (r, (T1, T2)), Type.ARR (r', (U1, U2))) =>
          unify ((T1, U1) :: (T2, U2) :: C)
      | _ =>
          raise Incompatible (T, U))

  fun infer inferring polyVars e t = let
    val (t', T, C) = constraint_type inferring polyVars e t
    val S = unify C
    val U = Type.subst S T
    val u = substTypedTerm S t'
  in
    (u, U)
  end
end
