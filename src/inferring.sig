signature INFERRING = sig
  type t
  type constraint = Type.t * Type.t

  val new : unit -> t
  val gensym : t -> id
  val generalize : (region * id) list -> string -> Type.t -> Type.t

  val substConstraints : Type.subst -> constraint list -> constraint list
  val substTypedTerm : Type.subst -> TypedTerm.t -> TypedTerm.t

  exception NotInScope of region * id
  exception Cyclic of (region * id) * Type.t
  exception Incompatible of Type.t * Type.t

  val constraint_type : t -> (region * id) list -> (id * Type.t) list -> TypedTerm.t -> TypedTerm.t * Type.t * constraint list
  val unify : constraint list -> Type.subst

  val infer : t -> (region * id) list -> (id * Type.t) list -> TypedTerm.t -> TypedTerm.t * Type.t
end
