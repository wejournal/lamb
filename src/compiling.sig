signature COMPILING = sig
  type env = id list

  val compile : Gensym.t -> string Emitting.t -> env -> string -> KrivineMachine.code -> unit
end
