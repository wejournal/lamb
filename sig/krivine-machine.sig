signature KRIVINE_MACHINE = sig
  datatype env = ENV of (Instr.t list * env) list
  type stack = (Instr.t list * env) list
  type state = Instr.t list * stack * env

  val trans : state -> state option
  val eval : Instr.t list -> Instr.t list * env

  val showThunk : (Instr.t list * env) -> string
  val showState : state -> string
end
