signature ABI = sig
  type register = string
  type instr = string

  val arg0 : register
  val arg1 : register
  val arg2 : register
  val arg3 : register
  val arg4 : register option
  val arg5 : register option

  val padding : int
end
