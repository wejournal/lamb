signature COMPILING = sig
  val compile : Gensym.t -> string Emitting.t -> string list -> string -> KrivineMachine.code -> unit
end
