type id = string

signature TERM = sig
  datatype t =
    VAR of id
  | APP of t * t
  | ABS of id * t

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
