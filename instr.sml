structure Instr :> INSTR = struct
  datatype t =
    ACCESS of int
  | GRAB
  | PUSH of t list

  fun compile (DeBruijnIndexedTerm.VAR i) = [ACCESS i]
    | compile (DeBruijnIndexedTerm.APP (t, u)) = [PUSH (compile u)] @ compile t
    | compile (DeBruijnIndexedTerm.ABS t) = GRAB :: compile t

  val B = compile DeBruijnIndexedTerm.B
  val C = compile DeBruijnIndexedTerm.C
  val I = compile DeBruijnIndexedTerm.I
  val K = compile DeBruijnIndexedTerm.K
  val S = compile DeBruijnIndexedTerm.S
  val W = compile DeBruijnIndexedTerm.W
  val Y = compile DeBruijnIndexedTerm.Y
  val omega = compile DeBruijnIndexedTerm.omega
  val Omega = compile DeBruijnIndexedTerm.Omega

  fun show (ACCESS i) = "ACCESS " ^ Int.toString i
    | show GRAB = "GRAB"
    | show (PUSH c) = "PUSH " ^ showList c
  and showList c = "[" ^ String.concatWith ", " (map show c) ^ "]"
end
