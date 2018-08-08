functor Compiling (ABI : ABI) :> COMPILING = struct
  local
    fun push r NONE = ["\tpushq\t", r, "\n"]
      | push r (SOME r') = ["\tmovq\t", r, ",\t", r', "\n"]
    fun pop NONE = ["\tpopq\t%r14\n"]
      | pop (SOME _) = nil

    fun compileInstr gensym emitting name (KrivineMachine.ACCESS i) =
          Emitting.emitList
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
            emitting
      | compileInstr gensym emitting name KrivineMachine.GRAB = (
          Emitting.emitList
            [ "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
            , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
            , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
            , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
            , "\tleaq\t1(", ABI.arg0, "),\t%r10\n"
            , "\tmovq\t$24,\t%r11\n"
            , "\tmovq\t$4,\t%r12\n"
            , "\tpushq\t%r12\n"
            , "\tmovq\t%rsp,\t%r12\n" ]
            emitting
        ; Emitting.emitList (ABI.enter 1) emitting
        ; Emitting.emit "\tpushq\t%r12\n" emitting
        ; Emitting.emitList (push "%r11" ABI.arg5) emitting
        ; Emitting.emitList (push "%r10" ABI.arg4) emitting
        ; Emitting.emitList (ABI.enter 4) emitting
        ; Emitting.emit "\tcall\tgc_alloc\n" emitting
        ; Emitting.emitList (ABI.leave 4) emitting
        ; Emitting.emitList (pop ABI.arg4) emitting
        ; Emitting.emitList (pop ABI.arg5) emitting
        ; Emitting.emit "\tpopq\t%r12\n" emitting
        ; Emitting.emitList(ABI.leave 1) emitting
        ; Emitting.emitList
            [ "\tpopq\t%r12\n"
            , "\tmovq\t-16(%rbp),\t", ABI.arg1, "\n"
            , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
            , "\tpushq\t%rax\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg2, "\n"
            , "\tsalq\t$3,\t", ABI.arg2, "\n"
            , "\tmovq\t%rax,\t", ABI.arg0, "\n" ]
            emitting
        ; Emitting.emitList
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
            emitting
        )
      | compileInstr gensym emitting name (KrivineMachine.PUSH c) = let
          val x = "_" ^ Int.toString (Gensym.gensym gensym)
        in
          Emitting.emitList
            [ "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n"
            , "\tsalq\t$3,\t%r10\n"
            , "\taddq\t%r10,\t", ABI.arg3, "\n"
            , "\tmovq\t$", name, x, ",\t(", ABI.arg3, ")\n"
            , "\tmovq\t", ABI.arg0, ",\t8(", ABI.arg3, ")\n"
            , "\tmovq\t", ABI.arg1, ",\t16(", ABI.arg3, ")\n"
            , "\tsubq\t%r10,\t", ABI.arg3, "\n"
            , "\tincq\t", ABI.arg2, "\n" ]
            emitting
        ; let
            val emitting' = Emitting.new ()
          in
            compileCode gensym emitting' (name ^ x) c
          ; Emitting.setList (Emitting.toList emitting @ Emitting.toList emitting') emitting
          end
        end
    and compileCode gensym emitting name c = (
      Emitting.emitList
        [ name, ":\n"
        , "\tpushq\t%rbp\n"
        , "\tmovq\t%rsp,\t%rbp\n"
        , "\tsubq\t$32,\t%rsp\n" ]
        emitting
    ; List.app (compileInstr gensym emitting name) c
    )
  in
    fun compile gensym emitting names name c = let
      val name' = name ^ "_" ^ Int.toString (Gensym.gensym gensym)
    in
      Emitting.emitList [".globl\t", name, "\n", name, ":\n"] emitting
    ; Emitting.emitList
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
        emitting
    ; Emitting.emitList (ABI.enter 1) emitting
    ; Emitting.emit "\tpushq\t%r12\n" emitting
    ; Emitting.emitList (push "%r11" ABI.arg5) emitting
    ; Emitting.emitList (push "%r10" ABI.arg4) emitting
    ; Emitting.emitList (ABI.enter 4) emitting
    ; Emitting.emit "\tcall\tgc_alloc\n" emitting
    ; Emitting.emitList (ABI.leave 4) emitting
    ; Emitting.emitList (pop ABI.arg4) emitting
    ; Emitting.emitList (pop ABI.arg5) emitting
    ; Emitting.emit "\tpopq\t%r12\n" emitting
    ; Emitting.emitList (ABI.leave 1) emitting
    ; Emitting.emitList
        [ "\tpopq\t%r12\n"
        , "\tmovq\t-16(%rbp),\t", ABI.arg1, "\n"
        , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
        , "\tpushq\t%rax\n"
        , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg2, "\n"
        , "\tsalq\t$3,\t", ABI.arg2, "\n"
        , "\tmovq\t%rax,\t", ABI.arg0, "\n" ]
        emitting
    ; Emitting.emitList
        [ "\tcall\tmemcpy\n"
        , "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n"
        , "\tmovq\t-24(%rbp),\t", ABI.arg2, "\n"
        , "\tmovq\t-16(%rbp),\t%r14\n"
        , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
        , "\tpopq\t", ABI.arg1, "\n"
        , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r13\n"
        , "\tsalq\t$3,\t%r13\n"
        , "\taddq\t%r13,\t", ABI.arg1, "\n" ]
        emitting
    ; List.app
        (fn name =>
          Emitting.emitList
            [ "\tmovq\t$", name, ",\t(", ABI.arg1, ")\n"
            , "\tmovq\t$0,\t8(", ABI.arg1, ")\n"
            , "\tmovq\t%r14,\t16(", ABI.arg1, ")\n"
            , "\tincq\t", ABI.arg0, "\n"
            , "\taddq\t$24,\t", ABI.arg1, "\n"]
            emitting)
        (List.rev names)
    ; Emitting.emitList
        [ "\tsubq\t$", Int.toString (List.length names * 24), ",\t", ABI.arg1, "\n"
        , "\tsubq\t%r13,\t", ABI.arg1, "\n"
        , "\taddq\t$32,\t%rsp\n"
        , "\tpopq\t%rbp\n" ]
        emitting
    ; compileCode gensym emitting name' c
    end
  end
end
