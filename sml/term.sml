structure Term :> TERM = struct
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * t

  val B = ABS ("x", ABS ("y", ABS ("z", APP (VAR "x", APP (VAR "y", VAR "z")))))
  val C = ABS ("x", ABS ("y", ABS ("z", APP (APP (VAR "x", VAR "z"), VAR "y"))))
  val I = ABS ("x", VAR "x")
  val K = ABS ("x", ABS ("y", VAR "x"))
  val S = ABS ("x", ABS ("y", ABS ("z", APP (APP (VAR "x", VAR "z"), APP (VAR "y", VAR "z")))))
  val W = ABS ("x", ABS ("y", APP (APP (VAR "x", VAR "y"), VAR "y")))

  val Y = let
    val t = ABS ("x", APP (VAR "f", APP (VAR "x", VAR "x")))
  in
    ABS ("f", APP (t, t))
  end

  val omega = ABS ("x", APP (VAR "x", VAR "x"))
  val Omega = APP (omega, omega)

  fun show (VAR x) = x
    | show (APP (t, u)) = "(" ^ show t ^ " " ^ show u ^ ")"
    | show (ABS (x, t)) = "(^" ^ x ^ "." ^ show t ^ ")"
end
