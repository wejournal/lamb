structure MicrosoftABI :> ABI = struct
  type register = string
  type instr = string

  val arg0 = "%rcx"
  val arg1 = "%rdx"
  val arg2 = "%r8"
  val arg3 = "%r9"
  val arg4 = NONE
  val arg5 = NONE

  val padding = 32
end
