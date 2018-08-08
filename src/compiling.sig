signature COMPILING = sig
  type env = id list

  val compile : Gensym.t -> string Emitting.t -> env -> id -> KrivineMachine.code -> unit
end
