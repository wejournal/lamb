structure SimplyTyped :> SIMPLY_TYPED = struct
  fun eval t = let
    val T = SimplyTyping.simply_type nil t
    val t' = TypedTerm.erase t
    val u = DeBruijnIndexedTerm.compile t'
    val c = Instr.compile u
    val thunk = KrivineMachine.eval c
  in
    print (TypedTerm.show t ^ "\n  : " ^ Type.show T ^ "\n  = " ^ KrivineMachine.showThunk thunk ^ "\n")
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | SimplyTyping.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | SimplyTyping.Application (T, U) =>
      print ("type clash: applying " ^ Type.show T ^ " to " ^ Type.show U ^ "\n")
end
