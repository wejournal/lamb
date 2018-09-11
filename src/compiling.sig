signature COMPILING = sig
  type t
  type env = id list

  val new : unit -> t
  val compileInstr : t -> Gensym.t -> string Emitting.t -> id -> KrivineMachine.instr -> unit
  val compileCode : t -> Gensym.t -> string Emitting.t -> id -> KrivineMachine.code -> unit
  val compile : t -> Gensym.t -> string Emitting.t -> env -> id -> KrivineMachine.code -> unit
end
