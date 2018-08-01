structure Type :> TYPE = struct
  datatype t =
    VAR of region * id
  | CON of region * id
  | ARR of region * t * t

  type subst = (id * t) list

  fun eq (VAR (_, x)) (VAR (_, y)) = x = y
    | eq (CON (_, x)) (CON (_, y)) = x = y
    | eq (ARR (_, T1, T2)) (ARR (_, U1, U2)) = eq T1 U1 andalso eq U1 U2
    | eq _ _ = false

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

  fun BV (VAR (r, x)) = nil
    | BV (CON (r, x)) = [(r, x)]
    | BV (ARR (_, T, U)) = BV T @ BV U

  fun region (VAR (r, _)) = r
    | region (CON (r, _)) = r
    | region (ARR (r, _, _)) = r

  fun show (VAR (_, x)) = "'" ^ x
    | show (CON (_, x)) = x
    | show (ARR (_, T, U)) = "(" ^ show T ^ " -> " ^ show U ^ ")"
end
