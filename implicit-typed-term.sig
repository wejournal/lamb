signature IMPLICIT_TYPED_TERM = sig
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t option * t
  | LET of id * Type.t option * t * t

  val FV : t -> id list
  val implicit : Term.t -> t
  val erase : t -> Term.t
  val show : t -> string
end
