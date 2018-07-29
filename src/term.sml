structure Term :> TERM = struct
  datatype t =
    VAR of region * id
  | APP of region * t * t
  | ABS of region * (region * id) * t

  fun show (VAR (_, x)) = x
    | show (APP (_, t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS (_, (_, x), t)) = "(^" ^ x ^ "." ^ show t ^ ")"
end
