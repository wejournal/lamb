signature DE_BRUIJN_INDEXED_TERM = sig
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of id
  val compile : (id * int) list -> Term.t -> t
end
