structure Inferring :> INFERRING = struct
  type constraint = Type.t * Type.t
  type poly = id list
  type mono = id list
  type env = (id * Type.t) list

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C
  fun substEnv S E = map (fn (x, T) => (x, Type.subst S T)) E
  fun FVEnv E = List.concat (map (Type.FV o #2) E)
  fun BVEnv E = List.concat (map (Type.BV o #2) E)

  fun lookup x E = Option.map #2 (List.find (fn (y, _) => value x = value y) E)

  fun instantiate gensym PV T = let
    val S = map (fn y => (y, Type.VAR (Type.region T, Int.toString (Gensym.gensym gensym)))) PV
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
              val y = (region x, Int.toString (Gensym.gensym gensym))
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

  fun constraint_type gensym PV E (AST.VAR x) =
      (case lookup x E of
        NONE =>
          raise NotInScope x
      | SOME T =>
          (instantiate gensym PV T, nil))
    | constraint_type gensym PV E (AST.APP (r, (e1, e2))) = let
        val (T, C) = constraint_type gensym PV E e1
        val (U, C') = constraint_type gensym PV E e2
        val V = Type.VAR (r, Int.toString (Gensym.gensym gensym))
      in
        (V, (T, Type.ARR (r, (U, V))) :: C @ C')
      end
    | constraint_type gensym PV E (AST.ABS (r, (x, Topt, e))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (region x, Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val E' = (x, T) :: E
        val (U, C) = constraint_type gensym PV E' e
      in
        (Type.ARR (r, (T, U)), C)
      end
    | constraint_type gensym PV E (AST.LET (r, (x, Topt, e1, e2))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (region x, Int.toString (Gensym.gensym gensym))
          | SOME T =>
              T
        val (T', C) = constraint_type gensym PV E e1
        val S = unify ((T, T') :: C)
        val (T, C, E) = (Type.subst S T, substConstraints S C, substEnv S E)
        val (T, PV') = generalize gensym (FVEnv E) (BVEnv E) T
        val E' = (x, T) :: E
        val (U, C') = constraint_type gensym (PV' @ PV) E' e2
      in
        (U, C @ C')
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
    val (T, C) = constraint_type inferring PV e t
    val S = unify C
    val U = Type.subst S T
  in
    U
  end
end
