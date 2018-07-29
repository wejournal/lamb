signature INFERRING = sig
  type t
  type constraint = Type.t * Type.t

  val new : unit -> t
  val gensym : t -> id

  val substConstraints : Type.subst -> constraint list -> constraint list
  val substTypedTerm : Type.subst -> TypedTerm.t -> TypedTerm.t

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  val constraint_type : t -> id list -> (id * Type.t) list -> TypedTerm.t -> TypedTerm.t * Type.t * constraint list
  val unify : constraint list -> Type.subst

  val infer : TypedTerm.t -> TypedTerm.t * Type.t
end
