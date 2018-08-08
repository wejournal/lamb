signature INFERRING = sig
  type constraint = Type.t * Type.t
  type poly = id list
  type mono = id list
  type env = (id * Type.t) list

  val substConstraints : Type.subst -> constraint list -> constraint list
  val substTypedTerm : Type.subst -> TypedTerm.t -> TypedTerm.t
  val substEnv : Type.subst -> env -> env

  exception NotInScope of id
  exception Cyclic of id * Type.t
  exception Incompatible of Type.t * Type.t

  val instantiate : Gensym.t -> poly -> Type.t -> Type.t
  val generalize : Gensym.t -> mono -> mono -> Type.t -> Type.t * poly

  val constraint_type : Gensym.t -> poly -> env -> AST.exp -> TypedTerm.t * Type.t * constraint list
  val unify : constraint list -> Type.subst

  val infer : Gensym.t -> id list -> (id * Type.t) list -> AST.exp -> TypedTerm.t * Type.t
end
