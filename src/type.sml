structure Type :> TYPE = struct
  datatype t =
    VAR of id
  | CON of id
  | ARR of (t * t) node

  type subst = (id * t) list

  fun subst S (VAR x) =
        (case lookup x S of
          NONE =>
            VAR x
        | SOME T =>
            T)
    | subst _ (CON x) =
        CON x
    | subst S (ARR (r, (T, U))) =
        ARR (r, (subst S T, subst S U))

  fun replace _ (VAR x) =
        VAR x
    | replace S (CON x) =
        (case lookup x S of
          NONE =>
            CON x
        | SOME T =>
            T)
    | replace S (ARR (r, (T, U))) =
        ARR (r, (replace S T, replace S U))

  fun compose S S' =
      List.filter (fn (x, _) => List.all (fn (y, _) => value x <> value y) S') S @ map (fn (x, T) => (x, subst S T)) S'

  fun FV (VAR x) = [x]
    | FV (CON _) = nil
    | FV (ARR (_, (T, U))) = FV T @ FV U

  fun BV (VAR _) = nil
    | BV (CON x) = [x]
    | BV (ARR (_, (T, U))) = BV T @ BV U

  fun region (VAR (r, _)) = r
    | region (CON (r, _)) = r
    | region (ARR (r, _)) = r
end
