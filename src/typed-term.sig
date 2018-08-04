signature TYPED_TERM = sig
  datatype t =
    VAR of region * id
  | APP of region * t * t
  | ABS of region * (region * id) * Type.t option * t
  | LET of region * (region * id) * Type.t option * t * t

  val erase : t -> Term.t
end
