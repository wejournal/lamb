structure SystemVABI :> ABI = struct
  type register = string
  type instr = string

  val arg0 = "%rdi"
  val arg1 = "%rsi"
  val arg2 = "%rdx"
  val arg3 = "%rcx"
  val arg4 = SOME "%r8"
  val arg5 = SOME "%r9"

  val padding  = 0
end
