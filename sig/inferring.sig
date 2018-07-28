signature INFERRING = sig
  val infer : ImplicitTypedTerm.t -> TypedTerm.t * Type.t
end
