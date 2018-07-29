signature KRIVINE_MACHINE = sig
  datatype instr =
    ACCESS of int
  | GRAB
  | PUSH of instr list

  type code = instr list

  datatype env = ENV of (code * env) list
  type stack = (code * env) list
  type state = code * stack * env

  val compile : DeBruijnIndexedTerm.t -> code
  val trans : state -> state option
  val eval : code -> code * env

  val showInstr : instr -> string
  val showCode : code -> string
  val showThunk : (code * env) -> string
  val showState : state -> string
end
