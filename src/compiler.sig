signature COMPILER = sig
  type t
  val new : unit -> t
  val gensym : t -> string
  val compile : t -> string list -> string -> KrivineMachine.code -> string
end
