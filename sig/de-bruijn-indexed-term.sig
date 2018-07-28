signature DE_BRUIJN_INDEXED_TERM = sig
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  exception NotInScope of id
  val compile : Term.t -> t

  val B : t
  val C : t
  val I : t
  val K : t
  val S : t
  val W : t
  val Y : t
  val omega : t
  val Omega : t

  val show : t -> string
end
