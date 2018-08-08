structure Inferring :> INFERRING = struct
  type constraint = Type.t * Type.t
  type poly = id list
  type mono = id list
  type env = (id * Type.t) list

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C

  fun substTypedTerm S (TypedTerm.VAR (r, x)) = TypedTerm.VAR (r, x)
    | substTypedTerm S (TypedTerm.APP (r, (t, u))) = TypedTerm.APP (r, (substTypedTerm S t, substTypedTerm S u))
    | substTypedTerm S (TypedTerm.ABS (r, ((r', x), T, t))) = TypedTerm.ABS (r, ((r', x), Type.subst S T, substTypedTerm S t))
    | substTypedTerm S (TypedTerm.LET (r, ((r', x), T, t, u))) = TypedTerm.LET (r, ((r', x), Type.subst S T, substTypedTerm S t, substTypedTerm S u))

  fun substEnv S e = map (fn ((r, x), T) => ((r, x), Type.subst S T)) e

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun lookup x e = Option.map #2 (List.find (fn (y, _) => value x = value y) e)

  fun instantiate gensym PV T = let
    val S = map (fn y => (y, Type.VAR (Type.region T, "_" ^ Int.toString (Gensym.gensym gensym)))) PV
  in
    Type.subst S T
  end

  fun generalize gensym FV BV T = let
    val B2F = ref nil

    fun f (Type.VAR x) =
          if List.exists (fn y => value x = value y) FV then
            (Type.VAR x, nil)
          else
            (Type.VAR x, [x])
      | f (Type.CON x) =
          if List.exists (fn y => value x = value y) BV then
            (Type.CON x, nil)
          else (case lookup x (!B2F) of
            NONE => let
              val y = (region x, "_" ^ Int.toString (Gensym.gensym gensym))
            in
              B2F := (x, y) :: !B2F
            ; (Type.VAR y, [y])
            end
          | SOME y =>
              (Type.VAR (region x, value y), [(region x, value y)]))
      | f (Type.ARR (r, (T, U))) = let
            val (T', PV) = f T
            val (U', PV') = f U
          in
            (Type.ARR (r, (T', U')), PV @ PV')
          end
  in
    f T
  end

  fun constraint_type gensym PV e (AST.VAR x) =
      (case lookup x e of
        NONE =>
          raise NotInScope x
      | SOME T =>
          (TypedTerm.VAR x, instantiate gensym PV T, nil))
    | constraint_type gensym PV e (AST.APP (r, (t, u))) = let
        val (t', T, C) = constraint_type gensym PV e t
        val (u', U, C') = constraint_type gensym PV e u
        val V = Type.VAR (r, "_" ^ Int.toString (Gensym.gensym gensym))
      in
        (TypedTerm.APP (r, (t', u')), V, (T, Type.ARR (r, (U, V))) :: C @ C')
      end
    | constraint_type gensym PV e (AST.ABS (r, ((r', x), Topt, t))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (r', "_" ^ Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val e' = ((r', x), T) :: e
        val (t', U, C) = constraint_type gensym PV e' t
      in
        (TypedTerm.ABS (r, ((r', x), T, t')), Type.ARR (r, (T, U)), C)
      end
    | constraint_type gensym PV e (AST.LET (r, ((r', x), Topt, t, u))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (r', "_" ^ Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val (t', T', C) = constraint_type gensym PV e t
        val S = unify ((T, T') :: C)
        val (t', T, C, e) = (substTypedTerm S t', Type.subst S T, substConstraints S C, substEnv S e)
        val FV = List.concat (map (Type.FV o #2) e)
        val BV = List.concat (map (Type.BV o #2) e)
        val (T, PV') = generalize gensym FV BV T
        val e' = ((r', x), T) :: e
        val (u', U, C') = constraint_type gensym (PV' @ PV) e' u
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

  fun infer inferring PV e t = let
    val (t', T, C) = constraint_type inferring PV e t
    val S = unify C
    val U = Type.subst S T
    val u = substTypedTerm S t'
  in
    (u, U)
  end
end
