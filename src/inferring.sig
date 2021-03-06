signature INFERRING = sig
  type constraint = Type.t * Type.t
  type poly = id list
  type mono = id list
  type env = (id * (poly * Type.t)) list

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  val substConstraints : Type.subst -> constraint list -> constraint list
  val substEnv : Type.subst -> env -> env
  val TVEnv : env -> id list
  val BTEnv : env -> id list

  val instantiate : Gensym.t -> poly * Type.t -> Type.t
  val generalize : Gensym.t -> env -> Type.t -> poly * Type.t
  val unify : constraint list -> Type.subst
  val constraint_type : Gensym.t -> env -> TypedTerm.t -> Type.t * constraint list
  val infer : Gensym.t -> env -> TypedTerm.t -> Type.t
end
