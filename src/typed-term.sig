signature TYPED_TERM = sig
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * Type.t * t) node
  | LET of (id * Type.t * t * t) node

  val erase : t -> Term.t
end
