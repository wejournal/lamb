structure KrivineMachine :> KRIVINE_MACHINE = struct
  datatype instr =
    ACCESS of int
  | GRAB
  | PUSH of instr list

  type code = instr list

  fun compile (DeBruijnIndexedTerm.VAR i) = [ACCESS i]
    | compile (DeBruijnIndexedTerm.APP (t, u)) = [PUSH (compile u)] @ compile t
    | compile (DeBruijnIndexedTerm.ABS t) = GRAB :: compile t
end
