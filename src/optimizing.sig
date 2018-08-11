signature OPTIMIZING = sig
  val eta : KrivineMachine.code -> KrivineMachine.code
  val inline : KrivineMachine.code -> KrivineMachine.code
  val factor : KrivineMachine.code -> KrivineMachine.code
end
