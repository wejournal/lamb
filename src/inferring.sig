signature INFERRING = sig
  type constraint = Type.t * Type.t
  type mono = id list
  type env = (id * Type.t) list

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  val substConstraints : Type.subst -> constraint list -> constraint list
  val substEnv : Type.subst -> env -> env
  val FVEnv : env -> mono
  (*val BVEnv : env -> mono*)

  val instantiate : Gensym.t -> mono -> Type.t -> Type.t
  val generalize : Gensym.t -> mono -> Type.t -> Type.t
  val unify : constraint list -> Type.subst
  val constraint_type : Gensym.t -> mono -> env -> TypedTerm.t -> Type.t * constraint list
  val infer : Gensym.t -> mono -> env -> TypedTerm.t -> Type.t
end
