signature UNIFYING = sig
  val substConstraints : Type.subst -> ConstraintTyping.constraint list -> ConstraintTyping.constraint list
  val substTypedTerm : Type.subst -> TypedTerm.t -> TypedTerm.t

  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t
  val unify : ConstraintTyping.constraint list -> Type.subst
end
