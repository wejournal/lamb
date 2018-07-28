signature SIMPLY_TYPING = sig
  exception NotInScope of id
  exception Application of Type.t * Type.t

  val simply_type : (id * Type.t) list -> TypedTerm.t -> Type.t
end
