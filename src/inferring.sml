structure Inferring :> INFERRING = struct
  type constraint = Type.t * Type.t
  type mono = id list
  type env = (id * Type.t) list

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C
  fun substEnv S E = map (fn (x, T) => (x, Type.subst S T)) E
  fun FVEnv E = List.concat (map (Type.FV o #2) E)
  (*fun BVEnv E = List.concat (map (Type.BV o #2) E)*)

  fun instantiate gensym BV T = let
    val PV = List.filter (fn x => not (List.exists (fn y => value x = value y) BV)) (Type.BV T)
    val S = map (fn y => (y, Type.VAR (region y, Int.toString (Gensym.gensym gensym)))) PV
  in
    Type.replace S T
  end

  fun generalize gensym FV T = let
    val PV = List.filter (fn x => not (List.exists (fn y => value x = value y) FV)) (Type.FV T)
    val S = map (fn y => (y, Type.CON (region y, Int.toString (Gensym.gensym gensym)))) PV
  in
    Type.subst S T
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
          if List.exists (fn y => value x = value y) (Type.FV U) then
            raise Cyclic (x, U)
          else let
            val S = [(x, U)]
          in
            Type.compose (unify (substConstraints S C)) S
          end
      | (_, Type.VAR y) =>
          if List.exists (fn x => value x = value y) (Type.FV T) then
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

  fun constraint_type gensym BV E (TypedTerm.VAR x) =
      (case lookup x E of
        NONE =>
          raise NotInScope x
      | SOME T =>
          (instantiate gensym BV T, nil))
    | constraint_type gensym BV E (TypedTerm.APP (r, (e1, e2))) = let
        val (T, C) = constraint_type gensym BV E e1
        val (U, C') = constraint_type gensym BV E e2
        val V = Type.VAR (r, Int.toString (Gensym.gensym gensym))
      in
        (V, (T, Type.ARR (r, (U, V))) :: C @ C')
      end
    | constraint_type gensym BV E (TypedTerm.ABS (r, (x, T, e))) = let
        val E' = (x, T) :: E
        val (U, C) = constraint_type gensym BV E' e
      in
        (Type.ARR (r, (T, U)), C)
      end
    | constraint_type gensym BV E (TypedTerm.LET (r, (x, T, e1, e2))) = let
        val (T', C) = constraint_type gensym BV E e1
        val S = unify ((T, T') :: C)
        val (T, C, E) = (Type.subst S T, substConstraints S C, substEnv S E)
        val T = generalize gensym (FVEnv E) T
        val E' = (x, T) :: E
        val (U, C') = constraint_type gensym BV E' e2
      in
        (U, C @ C')
      end

  fun infer gensym BV E t = let
    val (T, C) = constraint_type gensym BV E t
    val S = unify C
    val U = Type.subst S T
  in
    U
  end
end
