structure KrivineMachine :> KRIVINE_MACHINE = struct
  datatype env = ENV of (Instr.t list * env) list
  type stack = (Instr.t list * env) list
  type state = Instr.t list * stack * env

  val trans = fn
    (nil, _, _) =>
      NONE
  | (Instr.ACCESS i :: c, p, ENV e) => let
      val (c', e') = List.nth (e, i)
    in
      SOME (c', p, e')
    end
  | (Instr.GRAB :: c, nil, ENV e) =>
      NONE
  | (Instr.GRAB :: c, (c', e') :: p, ENV e) =>
      SOME (c, p, ENV ((c', e') :: e))
  | (Instr.PUSH c' :: c, p, e) =>
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

  fun showThunk (c, ENV e) =
    "(" ^ Instr.showList c ^ ", [" ^ String.concatWith ", " (map showThunk e) ^ "])"

  fun showState (c, p, ENV e) =
    "(" ^ Instr.showList c ^
    ", [" ^ String.concatWith ", " (map showThunk p) ^
    "], [" ^ String.concatWith ", " (map showThunk e) ^ "])"
end
