structure Type :> TYPE = struct
  datatype t =
    VAR of region * id
  | CON of region * id
  | ARR of region * t * t

  type subst = (id * t) list

  fun subst S (VAR (r, x)) =
        (case List.find (fn (y, _) => x = y) S of
          NONE =>
            VAR (r, x)
        | SOME (_, T) =>
            T)
    | subst _ (CON (r, x)) =
        CON (r, x)
    | subst S (ARR (r, T, U)) =
        ARR (r, subst S T, subst S U)

  fun compose S S' =
    List.filter (fn (x, _) => List.all (fn (y, _) => x <> y) S') S @ map (fn (x, T) => (x, subst S T)) S'

  fun FV (VAR (r, x)) = [(r, x)]
    | FV (CON _) = nil
    | FV (ARR (_, T, U)) = FV T @ FV U

  fun region (VAR (r, _)) = r
    | region (CON (r, _)) = r
    | region (ARR (r, _, _)) = r

  fun show (VAR (_, x)) = "'" ^ x
    | show (CON (_, x)) = x
    | show (ARR (_, T, U)) = "(" ^ show T ^ " -> " ^ show U ^ ")"
end
