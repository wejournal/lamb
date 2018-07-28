structure SimplyTyping :> SIMPLY_TYPING = struct
  exception NotInScope of id
  exception Application of Type.t * Type.t

  fun simply_type e (TypedTerm.VAR x) =
      (case List.find (fn (y, _) => x = y) e of
        NONE =>
          raise NotInScope x
      | SOME (_, T) =>
          T)
    | simply_type e (TypedTerm.APP (t, u)) = let
        val T = simply_type e t
        val U = simply_type e u
      in
        case T of
          Type.ARR (U', V) =>
            if U = U' then
              V
            else
              raise Application (T, U)
        | _ =>
          raise Application (T, U)
      end
    | simply_type e (TypedTerm.ABS (x, T, t)) = let
        val e' = (x, T) :: e
        val U = simply_type e' t
      in
        Type.ARR (T, U)
      end
end
