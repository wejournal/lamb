structure Type :> TYPE = struct
  datatype t =
    VAR of id
  | CON of id
  | ARR of t * t

  type subst = (id * t) list

  fun subst S (VAR x) =
        (case List.find (fn (y, _) => x = y) S of
          NONE =>
            VAR x
        | SOME (_, T) =>
            T)
    | subst _ (CON x) =
        CON x
    | subst S (ARR (T, U)) =
        ARR (subst S T, subst S U)

  fun compose S S' =
    List.filter (fn (x, _) => List.all (fn (y, _) => x <> y) S') S @ map (fn (x, T) => (x, subst S T)) S'

  fun FV (VAR x) = [x]
    | FV (CON _) = nil
    | FV (ARR (T, U)) = FV T @ FV U

  fun show (VAR x) = "'" ^ x
    | show (CON x) = x
    | show (ARR (T, U)) = "(" ^ show T ^ " -> " ^ show U ^ ")"
end
