signature GENSYM = sig
  type t

  val new : unit -> t
  val gensym : t -> int
end
