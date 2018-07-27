structure ConstraintTyped :> CONSTRAINT_TYPED = struct
  fun infer t = let
    val (t', T) = Inferring.infer t
  in
    print (TypedTerm.show t' ^ "\n  : " ^ Type.show T ^ "\n")
  end handle
    ConstraintTyping.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Unifying.Cyclic (x, T) =>
      print (ImplicitTypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Unifying.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun eval t = let
    val (t', T) = Inferring.infer t
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t')
    val c = Instr.compile u
    val thunk = KrivineMachine.eval c
  in
    print (TypedTerm.show t' ^ "\n  : " ^ Type.show T ^ "\n  = " ^ KrivineMachine.showThunk thunk ^ "\n")
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | ConstraintTyping.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Unifying.Cyclic (x, T) =>
      print (ImplicitTypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Unifying.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun compileSystemV t = let
    val (t', T) = Inferring.infer t
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t')
    val c = Instr.compile u
    val s = SystemVCompiler.compile (SystemVCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | ConstraintTyping.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Unifying.Cyclic (x, T) =>
      print (ImplicitTypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Unifying.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun compileMicrosoft t = let
    val (t', T) = Inferring.infer t
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t')
    val c = Instr.compile u
    val s = MicrosoftCompiler.compile (MicrosoftCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | ConstraintTyping.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Unifying.Cyclic (x, T) =>
      print (ImplicitTypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Unifying.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")
end
