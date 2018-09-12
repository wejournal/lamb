structure Inferring :> INFERRING = struct
  type constraint = Type.t * Type.t
  type poly = id list
  type mono = id list
  type env = (id * (poly * Type.t)) list

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C
  fun substEnv S E = map (fn (x, (PV, T)) => (x, (PV, Type.subst S T))) E
  fun TVEnv E = List.concat (map (Type.TV o #2 o #2) E)
  fun BTEnv E = List.concat (map (Type.BT o #2 o #2) E)

  fun instantiate gensym (PV, T) = let
    val S = map (fn y => (y, Type.VAR (region y, Int.toString (Gensym.gensym gensym)))) PV
  in
    Type.replace S T
  end

  fun generalize gensym E T = let
    val PTV = List.filter (fn x => not (List.exists (fn y => value x = value y) (TVEnv E))) (Type.TV T)
    val PBT = List.filter (fn x => not (List.exists (fn y => value x = value y) (BTEnv E))) (Type.BT T)
    val PV' = map (fn y => (region y, Int.toString (Gensym.gensym gensym))) PTV
    val S = map (fn (y, z) => (y, Type.CON z)) (ListPair.zip (PTV, PV'))
  in
    (PV' @ PBT, Type.subst S T)
  end

  fun unify nil = nil
    | unify ((T, U) :: C) =
      (case (T, U) of
        (Type.VAR x, Type.VAR y) =>
          if value x = value y then
            unify C
          else let
            val S = [(x, U)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (Type.VAR x, _) =>
          if List.exists (fn y => value x = value y) (Type.TV U) then
            raise Cyclic (x, U)
          else let
            val S = [(x, U)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (_, Type.VAR y) =>
          if List.exists (fn x => value x = value y) (Type.TV T) then
            raise Cyclic (y, T)
          else let
            val S = [(y, T)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (Type.CON x, Type.CON y) =>
          if value x = value y then
            unify C
          else
            raise Incompatible (T, U)
      | (Type.ARR (r, (T1, T2)), Type.ARR (r', (U1, U2))) =>
          unify ((T1, U1) :: (T2, U2) :: C)
      | _ =>
          raise Incompatible (T, U))

  fun constraint_type gensym E (TypedTerm.VAR x) =
      (case lookup x E of
        NONE =>
          raise NotInScope x
      | SOME PT =>
          (instantiate gensym PT, nil))
    | constraint_type gensym E (TypedTerm.APP (r, (e1, e2))) = let
        val (T, C) = constraint_type gensym E e1
        val (U, C') = constraint_type gensym E e2
        val V = Type.VAR (r, Int.toString (Gensym.gensym gensym))
      in
        (V, (T, Type.ARR (r, (U, V))) :: C @ C')
      end
    | constraint_type gensym E (TypedTerm.ABS (r, (x, T, e))) = let
        val E' = (x, (nil, T)) :: E
        val (U, C) = constraint_type gensym E' e
      in
        (Type.ARR (r, (T, U)), C)
      end
    | constraint_type gensym E (TypedTerm.LET (r, (x, T, e1, e2))) = let
        val (T', C) = constraint_type gensym E e1
        val S = unify ((T, T') :: C)
        val (T, E) = (Type.subst S T, substEnv S E)
        val PT = generalize gensym E T
        val E' = (x, PT) :: E
        val (U, C') = constraint_type gensym E' e2
      in
        (U, (T, T') :: C @ C')
      end

  fun infer gensym E e = let
    val (T, C) = constraint_type gensym E e
    val S = unify C
    val U = Type.subst S T
  in
    U
  end
end
