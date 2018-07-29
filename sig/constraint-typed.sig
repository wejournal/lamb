signature CONSTRAINT_TYPED = sig
  val infer : TypedTerm.t -> unit
  val eval : TypedTerm.t -> unit
  val compileSystemV : TypedTerm.t -> unit
  val compileMicrosoft : TypedTerm.t -> unit
end
