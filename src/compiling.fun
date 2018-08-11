functor Compiling (ABI : ABI) :> COMPILING = struct
  type env = id list

  local
    fun push r NONE = ["\tpushq\t", r, "\n"]
      | push r (SOME r') = ["\tmovq\t", r, ",\t", r', "\n"]
    fun pop NONE = ["\tpopq\t%r14\n"]
      | pop (SOME _) = nil

    fun compileInstr _ emitting _ (KrivineMachine.ACCESS i) =
          Emitting.emitList
            [ "\tleaq\t-", Int.toString ((i + 1) * 3), "(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg0, "\n"
            , "\tsalq\t$3,\t", ABI.arg0, "\n"
            , "\taddq\t", ABI.arg0, ",\t", ABI.arg1, "\n"
            , "\tmovq\t(", ABI.arg1, "),\t%r10\n"
            , "\tmovq\t8(", ABI.arg1, "),\t", ABI.arg0, "\n"
            , "\tmovq\t16(", ABI.arg1, "),\t", ABI.arg1, "\n"
            , "\tleave\n"
            , "\tjmp\t*%r10\n" ]
            emitting
      | compileInstr _ emitting _ KrivineMachine.GRAB = (
          Emitting.emitList
            [ "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
            , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
            , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
            , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
            , "\tmovq\t$4,\t-40(%rbp)\n"
            , "\tleaq\t-40(%rbp),\t%r12\n" ]
            emitting
        ; if Option.isSome ABI.arg4 then
            Emitting.emit "\tmovq\t%r12,\t-64(%rbp)\n" emitting
          else
            Emitting.emit "\tmovq\t%r12,\t-48(%rbp)\n" emitting

        ; case ABI.arg5 of
            NONE =>
              Emitting.emit "\tmovq\t$24,\t-56(%rbp)\n" emitting
          | SOME arg5 =>
              Emitting.emitList ["\tmovq\t$24,\t", arg5, "\n"] emitting

        ; case ABI.arg4 of
            NONE =>
              Emitting.emitList
                [ "\tleaq\t1(", ABI.arg0, "),\t%r10\n"
                , "\tmovq\t%r10,\t-64(%rbp)\n" ]
                emitting
          | SOME arg4 =>
              Emitting.emitList ["\tleaq\t1(", ABI.arg0, "),\t", arg4, "\n"] emitting

        ; if ABI.padding > 0 then
            Emitting.emitList ["\tsubq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
          else
            ()
        ; Emitting.emit "\tcall\tgc_alloc\n" emitting
        ; if ABI.padding > 0 then
            Emitting.emitList ["\taddq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
          else
            ()
        ; Emitting.emitList
            [ "\tmovq\t-16(%rbp),\t", ABI.arg1, "\n"
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
            , "\taddq\t", ABI.arg3, ",\t%r13\n"
            , "\tmovq\t(%r13),\t%r10\n"
            , "\tmovq\t8(%r13),\t%r11\n"
            , "\tmovq\t16(%r13),\t%r12\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r13\n"
            , "\tsalq\t$3,\t%r13\n"
            , "\taddq\t", ABI.arg1, ",\t%r13\n"
            , "\tmovq\t%r10,\t(%r13)\n"
            , "\tmovq\t%r11,\t8(%r13)\n"
            , "\tmovq\t%r12,\t16(%r13)\n"
            , "\tincq\t", ABI.arg0, "\n" ]
            emitting
        )
      | compileInstr gensym emitting name (KrivineMachine.PUSH c) = let
          val x = "_" ^ Int.toString (Gensym.gensym gensym)
        in
          Emitting.emitList
            [ "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n"
            , "\tsalq\t$3,\t%r10\n"
            , "\taddq\t", ABI.arg3, ",\t%r10\n"
            , "\tmovq\t$", name, x, ",\t(%r10)\n"
            , "\tmovq\t", ABI.arg0, ",\t8(%r10)\n"
            , "\tmovq\t", ABI.arg1, ",\t16(%r10)\n"
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
        , "\tenter\t$64,\t$0\n" ]
        emitting
    ; List.app (compileInstr gensym emitting name) c
    )
  in
    fun compile gensym emitting E x c = let
      val name' = value x ^ "_" ^ Int.toString (Gensym.gensym gensym)
    in
      Emitting.emitList [".globl\t", value x, "\n", value x, ":\n"] emitting
    ; Emitting.emitList
        [ "\tpushq\t%rbp\n"
        , "\tmovq\t%rsp,\t%rbp\n"
        , "\tsubq\t$32,\t%rsp\n"
        , "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
        , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
        , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
        , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
        , "\tleaq\t", Int.toString (List.length E), "(", ABI.arg0, "),\t%r10\n"
        , "\tmovq\t$24,\t%r11\n"
        , "\tmovq\t$4,\t%r12\n"
        , "\tpushq\t%r12\n"
        , "\tmovq\t%rsp,\t%r12\n" ]
        emitting
    ; Emitting.emit "\tpushq\t%r12\n" emitting
    ; Emitting.emitList (push "%r11" ABI.arg5) emitting
    ; Emitting.emitList (push "%r10" ABI.arg4) emitting
    ; if ABI.padding > 0 then
        Emitting.emitList ["\tsubq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
      else
        ()
    ; Emitting.emit "\tcall\tgc_alloc\n" emitting
    ; if ABI.padding > 0 then
        Emitting.emitList ["\taddq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
      else
        ()
    ; Emitting.emitList (pop ABI.arg4) emitting
    ; Emitting.emitList (pop ABI.arg5) emitting
    ; Emitting.emit "\tpopq\t%r12\n" emitting
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
        (fn x =>
          Emitting.emitList
            [ "\tmovq\t$", value x, ",\t(", ABI.arg1, ")\n"
            , "\tmovq\t$0,\t8(", ABI.arg1, ")\n"
            , "\tmovq\t%r14,\t16(", ABI.arg1, ")\n"
            , "\tincq\t", ABI.arg0, "\n"
            , "\taddq\t$24,\t", ABI.arg1, "\n"]
            emitting)
        (List.rev E)
    ; Emitting.emitList
        [ "\tsubq\t$", Int.toString (List.length E * 24), ",\t", ABI.arg1, "\n"
        , "\tsubq\t%r13,\t", ABI.arg1, "\n"
        , "\taddq\t$32,\t%rsp\n"
        , "\tpopq\t%rbp\n" ]
        emitting
    ; compileCode gensym emitting name' c
    end
  end
end
