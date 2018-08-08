signature COMPILER = sig
  type t
  val new : unit -> t
  val gensym : t -> string
  val emit : t -> string -> unit
  val emitList : t -> string list -> unit
  val emitRevList : t -> string list -> unit
  val compile : t -> string list -> string -> KrivineMachine.code -> string
end
