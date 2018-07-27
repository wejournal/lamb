signature CONSTRAINT_TYPED = sig
  val infer : ImplicitTypedTerm.t -> unit
  val eval : ImplicitTypedTerm.t -> unit
  val compileSystemV : ImplicitTypedTerm.t -> unit
  val compileMicrosoft : ImplicitTypedTerm.t -> unit
end
