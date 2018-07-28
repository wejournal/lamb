structure Unifying :> UNIFYING = struct
  fun substConstraints S C = map (fn (T, U) => (Type.subst S T, Type.subst S U)) C

  fun substTypedTerm S (TypedTerm.VAR x) = TypedTerm.VAR x
    | substTypedTerm S (TypedTerm.APP (t, u)) = TypedTerm.APP (substTypedTerm S t, substTypedTerm S u)
    | substTypedTerm S (TypedTerm.ABS (x, T, t)) = TypedTerm.ABS (x, Type.subst S T, substTypedTerm S t)

  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  fun unify nil = nil
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
end
