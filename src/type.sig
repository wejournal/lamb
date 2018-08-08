signature TYPE = sig
  datatype t =
    VAR of id
  | CON of id
  | ARR of (t * t) node

  type subst = (id * t) list

  val lookup : id -> subst -> t option
  val subst : subst -> t -> t
  val compose : subst -> subst -> subst
  val FV : t -> id list
  val BV : t -> id list
  val region : t -> region
end
