signature CONSTRAINT_TYPING = sig
  type t
  type constraint = Type.t * Type.t

  val new : unit -> t
  val gensym : t -> id

  exception NotInScope of id
  val constraint_type : t -> (id * Type.t) list -> ImplicitTypedTerm.t -> TypedTerm.t * Type.t * constraint list
end
