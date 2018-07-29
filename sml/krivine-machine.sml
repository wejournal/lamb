structure KrivineMachine :> KRIVINE_MACHINE = struct
  datatype instr =
    ACCESS of int
  | GRAB
  | PUSH of instr list

  type code = instr list

  datatype env = ENV of (code * env) list
  type stack = (code * env) list
  type state = code * stack * env

  fun compile (DeBruijnIndexedTerm.VAR i) = [ACCESS i]
    | compile (DeBruijnIndexedTerm.APP (t, u)) = [PUSH (compile u)] @ compile t
    | compile (DeBruijnIndexedTerm.ABS t) = GRAB :: compile t

  val trans = fn
    (nil, _, _) =>
      NONE
  | (ACCESS i :: c, p, ENV e) => let
      val (c', e') = List.nth (e, i)
    in
      SOME (c', p, e')
    end
  | (GRAB :: c, nil, ENV e) =>
      NONE
  | (GRAB :: c, (c', e') :: p, ENV e) =>
      SOME (c, p, ENV ((c', e') :: e))
  | (PUSH c' :: c, p, e) =>
      SOME (c, (c', e) :: p, e)

  local
    fun eval' (t, p, e) =
      case trans (t, p, e) of
        NONE =>
          (t, e)
      | SOME (t', p', e') =>
          eval' (t', p', e')
  in
    fun eval t = eval' (t, nil, ENV nil)
  end

  fun showInstr (ACCESS i) = "ACCESS " ^ Int.toString i
    | showInstr GRAB = "GRAB"
    | showInstr (PUSH c) = "PUSH " ^ showCode c
  and showCode c = "[" ^ String.concatWith ", " (map showInstr c) ^ "]"

  fun showThunk (c, ENV e) =
    "(" ^ showCode c ^ ", [" ^ String.concatWith ", " (map showThunk e) ^ "])"

  fun showState (c, p, ENV e) =
    "(" ^ showCode c ^
    ", [" ^ String.concatWith ", " (map showThunk p) ^
    "], [" ^ String.concatWith ", " (map showThunk e) ^ "])"
end
