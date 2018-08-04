signature TYPE = sig
  datatype t =
    VAR of region * id
  | CON of region * id
  | ARR of region * t * t

  type subst = (id * t) list

  val eq : t -> t -> bool
  val subst : subst -> t -> t
  val compose : subst -> subst -> subst
  val FV : t -> (region * id) list
  val BV : t -> (region * id) list
  val region : t -> region
end
