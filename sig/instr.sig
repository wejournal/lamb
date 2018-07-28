signature INSTR = sig
  datatype t =
    ACCESS of int
  | GRAB
  | PUSH of t list

  val B : t list
  val C : t list
  val I : t list
  val K : t list
  val S : t list
  val W : t list
  val Y : t list
  val omega : t list
  val Omega : t list

  val compile : DeBruijnIndexedTerm.t -> t list
  val show : t -> string
  val showList : t list -> string
end
