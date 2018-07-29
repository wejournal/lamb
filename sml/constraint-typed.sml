structure ConstraintTyped :> CONSTRAINT_TYPED = struct
  fun infer t = let
    val (t', T) = Inferring.infer t
  in
    print (TypedTerm.show t' ^ "\n  : " ^ Type.show T ^ "\n")
  end handle
    Inferring.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.Cyclic (x, T) =>
      print (TypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Inferring.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun eval t = let
    val (t', T) = Inferring.infer t
    val N = Type.CON "N"
    val A = Type.CON "A"
    val nat = Type.ARR (Type.ARR (N, N), Type.ARR (N, N))
    val string = Type.ARR (Type.ARR (nat, Type.ARR (A, A)), Type.ARR (A, A))
    val U = Type.ARR (string, string)
    val S = Inferring.unify [(T, U)]
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t)
    val c = KrivineMachine.compile u
    val thunk = KrivineMachine.eval c
  in
    print (TypedTerm.show (Inferring.substTypedTerm S t') ^ "\n  : " ^ Type.show (Type.subst S T) ^ "\n  = " ^ KrivineMachine.showThunk thunk ^ "\n")
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.Cyclic (x, T) =>
      print (TypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Inferring.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun compileSystemV t = let
    val (t', T) = Inferring.infer t
    val N = Type.CON "N"
    val A = Type.CON "A"
    val nat = Type.ARR (Type.ARR (N, N), Type.ARR (N, N))
    val string = Type.ARR (Type.ARR (nat, Type.ARR (A, A)), Type.ARR (A, A))
    val U = Type.ARR (string, string)
    val _ = Inferring.unify [(T, U)]
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t)
    val c = KrivineMachine.compile u
    val s = SystemVCompiler.compile (SystemVCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.Cyclic (x, T) =>
      print (TypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Inferring.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")

  fun compileMicrosoft t = let
    val (t', T) = Inferring.infer t
    val u = DeBruijnIndexedTerm.compile (TypedTerm.erase t)
    val c = KrivineMachine.compile u
    val s = MicrosoftCompiler.compile (MicrosoftCompiler.new ()) "lamb_main" c
  in
    print (".globl\tlamb_main\n" ^ s)
  end handle
    DeBruijnIndexedTerm.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.NotInScope x =>
      print ("not in scope: " ^ x ^ "\n")
  | Inferring.Cyclic (x, T) =>
      print (TypedTerm.show t ^ " is cyclic: '" ^ x ^ " in " ^ Type.show T ^ "\n")
  | Inferring.Incompatible (T, U) =>
      print ("incompatible types: " ^ Type.show T ^ " and " ^ Type.show U ^ "\n")
end
