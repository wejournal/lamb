signature DE_BRUIJN_INDEXED_TERM = sig
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of region * id
  val compile : (id * int) list -> Term.t -> t

  val show : t -> string
end
