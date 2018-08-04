signature KRIVINE_MACHINE = sig
  datatype instr =
    ACCESS of int
  | GRAB
  | PUSH of instr list

  type code = instr list

  val compile : DeBruijnIndexedTerm.t -> code
end
