functor Compiler (ABI : ABI) :> COMPILER = struct
  type t = int ref

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := !fresh + 1
  ; "_" ^ Int.toString i
  end

  fun compileInstr fresh name (Instr.ACCESS i) =
      ( "\t/* ACCESS " ^ Int.toString i ^ " */\n" ^
        "\tpushq\t" ^ ABI.arg1 ^ "\n" ^
        "\tpushq\t" ^ ABI.arg0 ^ "\n" ^
        "\tmovq\t" ^ ABI.arg0 ^ ",\t%r13\n" ^
        "\tsubq\t$" ^ Int.toString (i + 1) ^ ",\t%r13\n" ^
        "\tleaq\t0(%r13, %r13, 2),\t%r13\n" ^
        "\tsalq\t$3,\t%r13\n" ^
        "\taddq\t%r13,\t" ^ ABI.arg1 ^ "\n" ^
        "\tmovq\t(" ^ ABI.arg1 ^ "),\t%r10\n" ^
        "\tmovq\t8(" ^ ABI.arg1 ^ "),\t%r11\n" ^
        "\tmovq\t16(" ^ ABI.arg1 ^ "),\t%r12\n" ^
        "\tsubq\t%r13,\t" ^ ABI.arg1 ^ "\n" ^
        "\tmovq\t%r11,\t" ^ ABI.arg0 ^ "\n" ^
        "\tmovq\t%r12,\t" ^ ABI.arg1 ^ "\n" ^
        "\tpopq\t%r13\n" ^
        "\tpopq\t%r14\n" ^
        "\tjmp\t*%r10\n"
      , "")
    | compileInstr fresh name Instr.GRAB = let
        fun push r NONE = "\tpushq\t" ^ r ^ "\n"
          | push r (SOME r') = "\tmovq\t" ^ r ^ ",\t" ^ r' ^ "\n"
        fun pop NONE = "\tpopq\t%r14\n"
          | pop (SOME _) = ""
      in
        ( "\t/* GRAB */\n" ^
          "\tpushq\t" ^ ABI.arg0 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg1 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg2 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg3 ^ "\n" ^
          "\tmovq\t" ^ ABI.arg0 ^ ",\t%r10\n" ^
          "\tincq\t%r10\n" ^
          "\tmovq\t$24,\t%r11\n" ^
          "\tmovq\t$4,\t%r12\n" ^
          "\tpushq\t%r12\n" ^
          "\tmovq\t%rsp,\t%r12\n" ^
          concat (ABI.enter 1) ^
          "\tpushq\t%r12\n" ^
          push "%r11" ABI.arg5 ^
          push "%r10" ABI.arg4 ^
          concat (ABI.enter 4) ^
          concat (ABI.call "gc_alloc") ^
          concat (ABI.leave 4) ^
          pop ABI.arg4 ^
          pop ABI.arg5 ^
          "\tpopq\t%r12\n" ^
          concat (ABI.leave 1) ^
          "\tpopq\t%r12\n" ^
          "\tpopq\t" ^ ABI.arg3 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg2 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg1 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg0 ^ "\n" ^
          "\tpushq\t%rax\n" ^
          "\tpushq\t" ^ ABI.arg0 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg1 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg2 ^ "\n" ^
          "\tpushq\t" ^ ABI.arg3 ^ "\n" ^
          "\tleaq\t0(" ^ ABI.arg0 ^ ", " ^ ABI.arg0 ^ ", 2),\t" ^ ABI.arg2 ^ "\n" ^
          "\tsalq\t$3,\t" ^ ABI.arg2 ^ "\n" ^
          "\tmovq\t%rax,\t" ^ ABI.arg0 ^ "\n" ^
          concat (ABI.call "memcpy") ^
          "\tpopq\t" ^ ABI.arg3 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg2 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg1 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg0 ^ "\n" ^
          "\tpopq\t" ^ ABI.arg1 ^ "\n" ^
          "\tdecq\t" ^ ABI.arg2 ^ "\n" ^
          "\tleaq\t0(" ^ ABI.arg2 ^ ", " ^ ABI.arg2 ^ ", 2),\t%r13\n" ^
          "\tsalq\t$3,\t%r13\n" ^
          "\taddq\t%r13,\t" ^ ABI.arg3 ^ "\n" ^
          "\tmovq\t(" ^ ABI.arg3 ^ "),\t%r10\n" ^
          "\tmovq\t8(" ^ ABI.arg3 ^ "),\t%r11\n" ^
          "\tmovq\t16(" ^ ABI.arg3 ^ "),\t%r12\n" ^
          "\tmovq\t$0,\t(" ^ ABI.arg3 ^ ")\n" ^
          "\tmovq\t$0,\t8(" ^ ABI.arg3 ^ ")\n" ^
          "\tmovq\t$0,\t16(" ^ ABI.arg3 ^ ")\n" ^
          "\tsubq\t%r13,\t" ^ ABI.arg3 ^ "\n" ^
          "\tleaq\t0(" ^ ABI.arg0 ^ ", " ^ ABI.arg0 ^ ", 2),\t%r13\n" ^
          "\tsalq\t$3,\t%r13\n" ^
          "\taddq\t%r13,\t" ^ ABI.arg1 ^ "\n" ^
          "\tmovq\t%r10,\t(" ^ ABI.arg1 ^ ")\n" ^
          "\tmovq\t%r11,\t8(" ^ ABI.arg1 ^ ")\n" ^
          "\tmovq\t%r12,\t16(" ^ ABI.arg1 ^ ")\n" ^
          "\tsubq\t%r13,\t" ^ ABI.arg1 ^ "\n" ^
          "\tincq\t" ^ ABI.arg0 ^ "\n"
        , "")
      end
    | compileInstr fresh name (Instr.PUSH c) = let
        val x = gensym fresh
      in
        ( "\t/* PUSH " ^ Instr.showList c ^ " */\n" ^
          "\tleaq\t0(" ^ ABI.arg2 ^ ", " ^ ABI.arg2 ^ ", 2),\t%r10\n" ^
          "\tsalq\t$3,\t%r10\n" ^
          "\taddq\t%r10,\t" ^ ABI.arg3 ^ "\n" ^
          "\tmovq\t$" ^ name ^ x ^ ",\t(" ^ ABI.arg3 ^ ")\n" ^
          "\tmovq\t" ^ ABI.arg0 ^ ",\t8(" ^ ABI.arg3 ^ ")\n" ^
          "\tmovq\t" ^ ABI.arg1 ^ ",\t16(" ^ ABI.arg3 ^ ")\n" ^
          "\tleaq\t0(" ^ ABI.arg2 ^ ", " ^ ABI.arg2 ^ ", 2),\t%r10\n" ^
          "\tsalq\t$3,\t%r10\n" ^
          "\tsubq\t%r10,\t" ^ ABI.arg3 ^ "\n" ^
          "\tincq\t" ^ ABI.arg2 ^ "\n"
        , compile fresh (name ^ x) c )
      end
  and compile fresh name c = let
    val codes = List.map (compileInstr fresh name) c
    val s = concat (List.map #1 codes)
    val s' = concat (List.map #2 codes)
  in
    name ^ ":\n" ^ s ^ s'
  end
end
