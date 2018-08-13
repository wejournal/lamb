functor Compiling (ABI : ABI) :> COMPILING = struct
  type t = (KrivineMachine.code * string) list ref
  type env = id list

  fun new () = ref nil

  local
    fun compileInstr _ _ emitting _ (KrivineMachine.ACCESS i) =
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
      | compileInstr _ _ emitting _ KrivineMachine.GRAB = (
          Emitting.emitList
            [ "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
            , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
            , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
            , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
            , "\tmovq\t$4,\t-40(%rbp)\n"
            , "\tleaq\t-40(%rbp),\t%r10\n" ]
            emitting
        ; if Option.isSome ABI.arg4 then
            Emitting.emit "\tmovq\t%r10,\t-64(%rbp)\n" emitting
          else
            Emitting.emit "\tmovq\t%r10,\t-48(%rbp)\n" emitting

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
        ; if ABI.padding > 0 then
            Emitting.emitList ["\tsubq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
          else
            ()
        ; Emitting.emit "\tcall\tmemcpy\n" emitting
        ; if ABI.padding > 0 then
            Emitting.emitList ["\taddq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
          else
            ()
        ; Emitting.emitList
            [ "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n"
            , "\tmovq\t-24(%rbp),\t", ABI.arg2, "\n"
            , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
            , "\tpopq\t", ABI.arg1, "\n"
            , "\tdecq\t", ABI.arg2, "\n"
            , "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n"
            , "\tsalq\t$3,\t%r10\n"
            , "\taddq\t", ABI.arg3, ",\t%r10\n"
            , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r11\n"
            , "\tsalq\t$3,\t%r11\n"
            , "\taddq\t", ABI.arg1, ",\t%r11\n"
            , "\tpushq\t%r12\n"
            , "\tmovq\t(%r10),\t%r12\n"
            , "\tmovq\t%r12,\t(%r11)\n"
            , "\tmovq\t8(%r10),\t%r12\n"
            , "\tmovq\t%r12,\t8(%r11)\n"
            , "\tmovq\t16(%r10),\t%r12\n"
            , "\tmovq\t%r12,\t16(%r11)\n"
            , "\tpopq\t%r12\n"
            , "\tincq\t", ABI.arg0, "\n" ]
            emitting
        )
      | compileInstr memo gensym emitting name (KrivineMachine.PUSH c) = let
          val already = Option.map #2 (List.find (fn (c', _) => c = c') (!memo))

          val name =
            case already of
              NONE =>
                name ^ "_" ^ Int.toString (Gensym.gensym gensym)
            | SOME name =>
                name
        in
          Emitting.emitList
            [ "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n"
            , "\tsalq\t$3,\t%r10\n"
            , "\taddq\t", ABI.arg3, ",\t%r10\n"
            , "\tmovq\t$", name, ",\t(%r10)\n"
            , "\tmovq\t", ABI.arg0, ",\t8(%r10)\n"
            , "\tmovq\t", ABI.arg1, ",\t16(%r10)\n"
            , "\tincq\t", ABI.arg2, "\n" ]
            emitting
        ; if not (Option.isSome already) then
            let
              val emitting' = Emitting.new ()
            in
              memo := (c, name) :: !memo
            ; compileCode memo gensym emitting' name c
            ; Emitting.setList (Emitting.toList emitting @ Emitting.toList emitting') emitting
            end
          else
            ()
        end
    and compileCode memo gensym emitting name c = (
      Emitting.emitList
        [ name, ":\n"
        , "\tenter\t$64,\t$0\n" ]
        emitting
    ; List.app (compileInstr memo gensym emitting name) c
    )
  in
    fun compile memo gensym emitting E x c = let
      val name' = value x ^ "_" ^ Int.toString (Gensym.gensym gensym)
    in
      Emitting.emitList
        [ ".globl\t", value x, "\n", value x, ":\n"
        , "\tenter\t$64,\t$0\n" ]
        emitting
    ; Emitting.emitList
        [ "\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n"
        , "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n"
        , "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n"
        , "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n"
        , "\tmovq\t$4,\t-40(%rbp)\n"
        , "\tleaq\t-40(%rbp),\t%r10\n" ]
        emitting
    ; if Option.isSome ABI.arg4 then
        Emitting.emit "\tmovq\t%r10,\t-64(%rbp)\n" emitting
      else
        Emitting.emit "\tmovq\t%r10,\t-48(%rbp)\n" emitting

    ; case ABI.arg5 of
        NONE =>
          Emitting.emit "\tmovq\t$24,\t-56(%rbp)\n" emitting
      | SOME arg5 =>
          Emitting.emitList ["\tmovq\t$24,\t", arg5, "\n"] emitting

    ; case ABI.arg4 of
        NONE =>
          Emitting.emitList
            [ "\tleaq\t", Int.toString (List.length E), "(", ABI.arg0, "),\t%r10\n"
            , "\tmovq\t%r10,\t-64(%rbp)\n" ]
            emitting
      | SOME arg4 =>
          Emitting.emitList ["\tleaq\t", Int.toString (List.length E), "(", ABI.arg0, "),\t", arg4, "\n"] emitting

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
    ; if ABI.padding > 0 then
        Emitting.emitList ["\tsubq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
      else
        ()
    ; Emitting.emit "\tcall\tmemcpy\n" emitting
    ; if ABI.padding > 0 then
        Emitting.emitList ["\taddq\t$", Int.toString ABI.padding, ",\t%rsp\n"] emitting
      else
        ()
    ; Emitting.emitList
        [ "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n"
        , "\tmovq\t-24(%rbp),\t", ABI.arg2, "\n"
        , "\tmovq\t-8(%rbp),\t", ABI.arg0, "\n"
        , "\tpopq\t", ABI.arg1, "\n"
        , "\tmovq\t-16(%rbp),\t%r10\n"
        , "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r11\n"
        , "\tsalq\t$3,\t%r11\n"
        , "\taddq\t", ABI.arg1, ",\t%r11\n" ]
        emitting
    ; List.app
        (fn x =>
          Emitting.emitList
            [ "\tmovq\t$", value x, ",\t(%r11)\n"
            , "\tmovq\t$0,\t8(%r11)\n"
            , "\tmovq\t%r10,\t16(%r11)\n"
            , "\tincq\t", ABI.arg0, "\n"
            , "\taddq\t$24,\t%r11\n"]
            emitting)
        (List.rev E)
    ; Emitting.emit "\tleave\n" emitting
    ; compileCode memo gensym emitting name' c
    end
  end
end
