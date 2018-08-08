functor Compiler (ABI : ABI) :> COMPILER = struct
  type t = { fresh : int ref, emit : string -> unit, code : string list ref }

  fun new emit = { fresh = ref 0, emit = emit, code = ref nil }

  fun gensym {fresh, emit, code} = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; "_" ^ Int.toString i
  end

  fun emit {fresh, emit, code} = emit
  fun emitList {fresh, emit, code} = foldl (fn (s, ()) => emit s) ()
  fun emitRevList {fresh, emit, code} = foldr (fn (s, ()) => emit s) ()
  fun emitCode {fresh, emit, code} s = code := s :: !code

  local
    fun push r NONE = ["\tpushq\t", r, "\n"]
      | push r (SOME r') = ["\tmovq\t", r, ",\t", r', "\n"]
    fun pop NONE = ["\tpopq\t%r14\n"]
      | pop (SOME _) = nil

    fun compileInstr compiling name (KrivineMachine.ACCESS i) =
          emitList compiling
            [ "\tsubq\t$", Int.toString (i + 1), ",\t", ABI.arg0, "\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg0, "\n"
            , "\tsalq\t$3,\t", ABI.arg0, "\n"
            , "\taddq\t", ABI.arg0, ",\t", ABI.arg1, "\n"
            , "\tmovq\t(", ABI.arg1, "),\t%r10\n"
            , "\tmovq\t8(", ABI.arg1, "),\t", ABI.arg0, "\n"
            , "\tmovq\t16(", ABI.arg1, "),\t", ABI.arg1, "\n"
            , "\taddq\t$32,\t%rsp\n"
            , "\tpopq\t%rbp\n"
            , "\tjmp\t*%r10\n" ]
      | compileInstr compiling name KrivineMachine.GRAB = (
          emitList compiling
            [ "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
            , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
            , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
            , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
            , "\tleaq\t1(", ABI.arg0, "),\t%r10\n"
            , "\tmovq\t$24,\t%r11\n"
            , "\tmovq\t$4,\t%r12\n"
            , "\tpushq\t%r12\n"
            , "\tmovq\t%rsp,\t%r12\n" ]
        ; emitList compiling (ABI.enter 1)
        ; emit compiling "\tpushq\t%r12\n"
        ; emitList compiling (push "%r11" ABI.arg5)
        ; emitList compiling (push "%r10" ABI.arg4)
        ; emitList compiling (ABI.enter 4)
        ; emit compiling "\tcall\tgc_alloc\n"
        ; emitList compiling (ABI.leave 4)
        ; emitList compiling (pop ABI.arg4)
        ; emitList compiling (pop ABI.arg5)
        ; emit compiling "\tpopq\t%r12\n"
        ; emitList compiling(ABI.leave 1)
        ; emitList compiling
            [ "\tpopq\t%r12\n"
            , "\tmovq\t-16(%rbp),\t", ABI.arg1, "\n"
            , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
            , "\tpushq\t%rax\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg2, "\n"
            , "\tsalq\t$3,\t", ABI.arg2, "\n"
            , "\tmovq\t%rax,\t", ABI.arg0, "\n" ]
        ; emitList compiling
            [ "\tcall\tmemcpy\n"
            , "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n"
            , "\tmovq\t-24(%rbp),\t", ABI.arg2, "\n"
            , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
            , "\tpopq\t", ABI.arg1, "\n"
            , "\tdecq\t", ABI.arg2, "\n"
            , "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r13\n"
            , "\tsalq\t$3,\t%r13\n"
            , "\taddq\t%r13,\t", ABI.arg3, "\n"
            , "\tmovq\t(", ABI.arg3, "),\t%r10\n"
            , "\tmovq\t8(", ABI.arg3, "),\t%r11\n"
            , "\tmovq\t16(", ABI.arg3, "),\t%r12\n"
            , "\tmovq\t$0,\t(", ABI.arg3, ")\n"
            , "\tmovq\t$0,\t8(", ABI.arg3, ")\n"
            , "\tmovq\t$0,\t16(", ABI.arg3, ")\n"
            , "\tsubq\t%r13,\t", ABI.arg3, "\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r13\n"
            , "\tsalq\t$3,\t%r13\n"
            , "\taddq\t%r13,\t", ABI.arg1, "\n"
            , "\tmovq\t%r10,\t(", ABI.arg1, ")\n"
            , "\tmovq\t%r11,\t8(", ABI.arg1, ")\n"
            , "\tmovq\t%r12,\t16(", ABI.arg1, ")\n"
            , "\tsubq\t%r13,\t", ABI.arg1, "\n"
            , "\tincq\t", ABI.arg0, "\n" ]
        )
      | compileInstr compiling name (KrivineMachine.PUSH c) = let
          val x = gensym compiling
        in
          emitList compiling
            [ "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n"
            , "\tsalq\t$3,\t%r10\n"
            , "\taddq\t%r10,\t", ABI.arg3, "\n"
            , "\tmovq\t$", name, x, ",\t(", ABI.arg3, ")\n"
            , "\tmovq\t", ABI.arg0, ",\t8(", ABI.arg3, ")\n"
            , "\tmovq\t", ABI.arg1, ",\t16(", ABI.arg3, ")\n"
            , "\tsubq\t%r10,\t", ABI.arg3, "\n"
            , "\tincq\t", ABI.arg2, "\n" ]
        ; let
            val code = !(#code compiling)
          in
            #code compiling := nil
          ; compileCode
              {fresh = #fresh compiling, emit = emitCode compiling, code = #code compiling}
              (name ^ x)
              c
          ; #code compiling := code @ !(#code compiling)
          end
        end
    and compileCode compiling name c = (
      emitList compiling
        [ name, ":\n"
        , "\tpushq\t%rbp\n"
        , "\tmovq\t%rsp,\t%rbp\n"
        , "\tsubq\t$32,\t%rsp\n" ]
    ; List.app (compileInstr compiling name) c
    )
  in
    fun compile compiling names name c = let
      val name' = name ^ gensym compiling
    in
      emitList compiling [".globl\t", name, "\n", name, ":\n"]
    ; emitList compiling
        [ "\tpushq\t%rbp\n"
        , "\tmovq\t%rsp,\t%rbp\n"
        , "\tsubq\t$32,\t%rsp\n"
        , "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
        , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
        , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
        , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
        , "\tleaq\t", Int.toString (List.length names), "(", ABI.arg0, "),\t%r10\n"
        , "\tmovq\t$24,\t%r11\n"
        , "\tmovq\t$4,\t%r12\n"
        , "\tpushq\t%r12\n"
        , "\tmovq\t%rsp,\t%r12\n" ]
    ; emitList compiling (ABI.enter 1)
    ; emit compiling "\tpushq\t%r12\n"
    ; emitList compiling (push "%r11" ABI.arg5)
    ; emitList compiling (push "%r10" ABI.arg4)
    ; emitList compiling (ABI.enter 4)
    ; emit compiling "\tcall\tgc_alloc\n"
    ; emitList compiling (ABI.leave 4)
    ; emitList compiling (pop ABI.arg4)
    ; emitList compiling (pop ABI.arg5)
    ; emit compiling "\tpopq\t%r12\n"
    ; emitList compiling (ABI.leave 1)
    ; emitList compiling
        [ "\tpopq\t%r12\n"
        , "\tmovq\t-16(%rbp),\t", ABI.arg1, "\n"
        , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
        , "\tpushq\t%rax\n"
        , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg2, "\n"
        , "\tsalq\t$3,\t", ABI.arg2, "\n"
        , "\tmovq\t%rax,\t", ABI.arg0, "\n" ]
    ; emitList compiling
        [ "\tcall\tmemcpy\n"
        , "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n"
        , "\tmovq\t-24(%rbp),\t", ABI.arg2, "\n"
        , "\tmovq\t-16(%rbp),\t%r14\n"
        , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
        , "\tpopq\t", ABI.arg1, "\n"
        , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r13\n"
        , "\tsalq\t$3,\t%r13\n"
        , "\taddq\t%r13,\t", ABI.arg1, "\n" ]
    ; emitList compiling
    ; List.app
        (fn name =>
          emitList compiling
            [ "\tmovq\t$", name, ",\t(", ABI.arg1, ")\n"
            , "\tmovq\t$0,\t8(", ABI.arg1, ")\n"
            , "\tmovq\t%r14,\t16(", ABI.arg1, ")\n"
            , "\tincq\t", ABI.arg0, "\n"
            , "\taddq\t$24,\t", ABI.arg1, "\n"])
        (List.rev names)
    ; emitList compiling
        [ "\tsubq\t$", Int.toString (List.length names * 24), ",\t", ABI.arg1, "\n"
        , "\tsubq\t%r13,\t", ABI.arg1, "\n"
        , "\taddq\t$32,\t%rsp\n"
        , "\tpopq\t%rbp\n" ]
    ; compileCode compiling name' c
    ; emitRevList compiling (!(#code compiling))
    end
  end
end
