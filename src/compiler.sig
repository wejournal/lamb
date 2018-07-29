signature COMPILER = sig
  type t
  val new : unit -> t
  val gensym : t -> id
  val compile : t -> string -> KrivineMachine.code -> string
end
