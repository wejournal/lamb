structure Untyped :> UNTYPED = struct
  fun eval t = let
    val u = DeBruijnIndexedTerm.compile t
    val c = Instr.compile u
    val thunk = KrivineMachine.eval c
  in
    print (Term.show t ^ "\n  = " ^ KrivineMachine.showThunk thunk ^ "\n")
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")

  fun compileSystemV t = let
    val u = DeBruijnIndexedTerm.compile t
    val c = Instr.compile u
    val s = SystemVCompiler.compile (SystemVCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")

  fun compileMicrosoft t = let
    val u = DeBruijnIndexedTerm.compile t
    val c = Instr.compile u
    val s = MicrosoftCompiler.compile (MicrosoftCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
end
