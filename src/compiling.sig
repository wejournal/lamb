signature COMPILING = sig
  type t
  type env = id list

  val new : unit -> t
  val compile : t -> Gensym.t -> string Emitting.t -> env -> id -> KrivineMachine.code -> unit
end
