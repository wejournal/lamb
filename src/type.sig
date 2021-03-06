signature TYPE = sig
  datatype t =
    VAR of id
  | CON of id
  | ARR of (t * t) node

  type subst = (id * t) list

  val subst : subst -> t -> t
  val replace : subst -> t -> t
  val compose : subst -> subst -> subst
  val TV : t -> id list
  val BT : t -> id list
  val region : t -> region
end
