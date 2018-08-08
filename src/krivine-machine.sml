structure KrivineMachine :> KRIVINE_MACHINE = struct
  datatype instr =
    ACCESS of int
  | GRAB
  | PUSH of instr list

  type code = instr list

  fun compile (DeBruijnIndexedTerm.VAR i) = [ACCESS i]
    | compile (DeBruijnIndexedTerm.APP (e1, e2)) = PUSH (compile e2) :: compile e1
    | compile (DeBruijnIndexedTerm.ABS e) = GRAB :: compile e
end
