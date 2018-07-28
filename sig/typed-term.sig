signature TYPED_TERM = sig
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * Type.t * t

  val erase : t -> Term.t
  val show : t -> string
end