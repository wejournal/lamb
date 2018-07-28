signature TYPE = sig
  datatype t =
    VAR of id
  | CON of id
  | ARR of t * t

  type subst = (id * t) list

  val subst : subst -> t -> t
  val compose : subst -> subst -> subst
  val FV : t -> id list
  val show : t -> string
end
