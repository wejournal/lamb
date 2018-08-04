functor Compiler (ABI : ABI) :> COMPILER = struct
  type t = int ref

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; "_" ^ Int.toString i
  end

  local
    fun compileInstr fresh name (KrivineMachine.ACCESS i) =
        ( ["\tsubq\t$", Int.toString (i + 1), ",\t", ABI.arg0, "\n",
          "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg0, "\n",
          "\tsalq\t$3,\t", ABI.arg0, "\n",
          "\taddq\t", ABI.arg0, ",\t", ABI.arg1, "\n",
          "\tmovq\t(", ABI.arg1, "),\t%r10\n",
          "\tmovq\t8(", ABI.arg1, "),\t", ABI.arg0, "\n",
          "\tmovq\t16(", ABI.arg1, "),\t", ABI.arg1, "\n",
          "\taddq\t$32,\t%rsp\n",
          "\tpopq\t%rbp\n",
          "\tjmp\t*%r10\n" ]
        , nil)
      | compileInstr fresh name KrivineMachine.GRAB = let
          fun push r NONE = ["\tpushq\t", r, "\n"]
            | push r (SOME r') = ["\tmovq\t", r, ",\t", r', "\n"]
          fun pop NONE = ["\tpopq\t%r14\n"]
            | pop (SOME _) = nil
        in
          ( ["\tmovq\t", ABI.arg0, ",\t-8(%rbp)\n",
            "\tmovq\t", ABI.arg1, ",\t-16(%rbp)\n",
            "\tmovq\t", ABI.arg2, ",\t-24(%rbp)\n",
            "\tmovq\t", ABI.arg3, ",\t-32(%rbp)\n",
            "\tleaq\t1(", ABI.arg0, "),\t%r10\n",
            "\tmovq\t$24,\t%r11\n",
            "\tmovq\t$4,\t%r12\n",
            "\tpushq\t%r12\n",
            "\tmovq\t%rsp,\t%r12\n",
            concat (ABI.enter 1),
            "\tpushq\t%r12\n" ] @
            push "%r11" ABI.arg5 @
            push "%r10" ABI.arg4 @
            ABI.enter 4 @
            ["\tcall\tgc_alloc\n"] @
            ABI.leave 4 @
            pop ABI.arg4 @
            pop ABI.arg5 @
            "\tpopq\t%r12\n" ::
            ABI.leave 1 @
          [ "\tpopq\t%r12\n",
            "\tmovq\t-16(%rbp),", ABI.arg1, "\n",
            "\tmovq\t-8(%rbp),", ABI.arg0, "\n",
            "\tpushq\t%rax\n",
            "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t", ABI.arg2, "\n",
            "\tsalq\t$3,\t", ABI.arg2, "\n",
            "\tmovq\t%rax,\t", ABI.arg0, "\n" ] @
          [ "\tcall\tgc_memcpy\n",
            "\tmovq\t-32(%rbp),\t", ABI.arg3, "\n",
            "\tmovq\t-24(%rbp),", ABI.arg2, "\n",
            "\tmovq\t-8(%rbp),", ABI.arg0, "\n",
            "\tpopq\t", ABI.arg1, "\n",
            "\tdecq\t", ABI.arg2, "\n",
            "\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r13\n",
            "\tsalq\t$3,\t%r13\n",
            "\taddq\t%r13,\t", ABI.arg3, "\n",
            "\tmovq\t(", ABI.arg3, "),\t%r10\n",
            "\tmovq\t8(", ABI.arg3, "),\t%r11\n",
            "\tmovq\t16(", ABI.arg3, "),\t%r12\n",
            "\tmovq\t$0,\t(", ABI.arg3, ")\n",
            "\tmovq\t$0,\t8(", ABI.arg3, ")\n",
            "\tmovq\t$0,\t16(", ABI.arg3, ")\n",
            "\tsubq\t%r13,\t", ABI.arg3, "\n",
            "\tleaq\t0(", ABI.arg0, ", ", ABI.arg0, ", 2),\t%r13\n",
            "\tsalq\t$3,\t%r13\n",
            "\taddq\t%r13,\t", ABI.arg1, "\n",
            "\tmovq\t%r10,\t(", ABI.arg1, ")\n",
            "\tmovq\t%r11,\t8(", ABI.arg1, ")\n",
            "\tmovq\t%r12,\t16(", ABI.arg1, ")\n",
            "\tsubq\t%r13,\t", ABI.arg1, "\n",
            "\tincq\t", ABI.arg0, "\n" ]
          , nil)
        end
      | compileInstr fresh name (KrivineMachine.PUSH c) = let
          val x = gensym fresh
        in
          ( ["\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n",
            "\tsalq\t$3,\t%r10\n",
            "\taddq\t%r10,\t", ABI.arg3, "\n",
            "\tmovq\t$", name, x, ",\t(", ABI.arg3, ")\n",
            "\tmovq\t", ABI.arg0, ",\t8(", ABI.arg3, ")\n",
            "\tmovq\t", ABI.arg1, ",\t16(", ABI.arg3, ")\n",
            "\tsubq\t%r10,\t", ABI.arg3, "\n",
            "\tincq\t", ABI.arg2, "\n" ]
          , compileCode fresh (name ^ x) c )
        end
    and compileCode fresh name c = let
      val codes = List.map (compileInstr fresh name) c
      val s = List.map #1 codes @ List.concat (List.map #2 codes)
    in
      [ name, ":\n"
      , "\tpushq\t%rbp\n"
      , "\tmovq\t%rsp,\t%rbp\n"
      , "\tsubq\t$32,\t%rsp\n"
      ] :: s
    end
  in
    fun compile fresh names name c = let
      fun f name =
        ["\tleaq\t0(", ABI.arg2, ", ", ABI.arg2, ", 2),\t%r10\n",
          "\tsalq\t$3,\t%r10\n",
          "\taddq\t%r10,\t", ABI.arg3, "\n",
          "\tmovq\t$", name, ",\t(", ABI.arg3, ")\n",
          "\tmovq\t", ABI.arg0, ",\t8(", ABI.arg3, ")\n",
          "\tmovq\t", ABI.arg1, ",\t16(", ABI.arg3, ")\n",
          "\tsubq\t%r10,\t", ABI.arg3, "\n",
          "\tincq\t", ABI.arg2, "\n" ]

      val s = concat (List.concat (map f names))

      val grabs = List.tabulate (List.length names, fn _ => KrivineMachine.GRAB)
      val name' = name ^ gensym fresh
      val s' = concat (List.concat (compileCode fresh name' (grabs @ c)))
    in
      ".globl\t" ^ name ^ "\n" ^ name ^ ":\n" ^ s ^ s'
    end
  end
end
