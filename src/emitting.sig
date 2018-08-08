signature EMITTING = sig
  type 'a t

  val new : unit -> 'a t
  val emit : 'a -> 'a t -> unit
  val emitList : 'a list -> 'a t -> unit
  val emitRevList : 'a list -> 'a t -> unit
  val toList : 'a t -> 'a list
  val setList : 'a list -> 'a t -> unit
end
