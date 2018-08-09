signature DE_BRUIJN_INDEXED_TERM = sig
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  type env = (id * int) list

  exception NotInScope of id

  val compile : env -> Term.t -> t
end
