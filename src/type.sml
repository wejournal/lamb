structure Type :> TYPE = struct
  datatype t =
    VAR of id
  | CON of id
  | ARR of (t * t) node

  type subst = (id * t) list

  fun subst S (VAR (r, x)) =
        (case List.find (fn ((_, y), _) => x = y) S of
          NONE =>
            VAR (r, x)
        | SOME (_, T) =>
            T)
    | subst _ (CON (r, x)) =
        CON (r, x)
    | subst S (ARR (r, (T, U))) =
        ARR (r, (subst S T, subst S U))

  fun compose S S' =
    List.filter (fn ((_, x), _) => List.all (fn ((_, y), _) => x <> y) S') S @ map (fn ((r, x), T) => ((r, x), subst S T)) S'

  fun FV (VAR (r, x)) = [(r, x)]
    | FV (CON _) = nil
    | FV (ARR (_, (T, U))) = FV T @ FV U

  fun BV (VAR (r, x)) = nil
    | BV (CON (r, x)) = [(r, x)]
    | BV (ARR (_, (T, U))) = BV T @ BV U

  fun region (VAR (r, _)) = r
    | region (CON (r, _)) = r
    | region (ARR (r, (_, _))) = r
end
