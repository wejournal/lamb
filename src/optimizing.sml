structure Optimizing : OPTIMIZING = struct
  local open KrivineMachine in
    fun occur _ nil = 0
      | occur i (ACCESS j :: c) = if i = j then occur i c + 1 else occur i c
      | occur i (GRAB :: c) = occur (i + 1) c
      | occur i (PUSH c :: c') = occur i c + occur i c'

    fun inc _ nil = nil
      | inc i (ACCESS j :: c) = ACCESS (if i > j then j else j + 1) :: inc i c
      | inc i (GRAB :: c) = GRAB :: inc (i + 1) c
      | inc i (PUSH c :: c') = PUSH (inc i c) :: (inc i c')

    fun dec _ nil = nil
      | dec i (ACCESS j :: c) = ACCESS (if i > j then j else j - 1) :: dec i c
      | dec i (GRAB :: c) = GRAB :: dec (i + 1) c
      | dec i (PUSH c :: c') = PUSH (dec i c) :: (dec i c')

    fun subst _ _ nil = nil
      | subst i c [ACCESS j] = if i = j then c else [ACCESS j]
      | subst i c (ACCESS j :: c') = if i = j then c @ (subst i c c') else ACCESS j :: subst i c c'
      | subst i c (GRAB :: c') = GRAB :: subst (i + 1) (inc 0 c) c'
      | subst i c (PUSH c' :: c'') = PUSH (subst i c c') :: subst i c c''

    fun eta nil = nil
      | eta (GRAB :: PUSH [ACCESS 0] :: c) =
          if occur 0 c = 0 then
            dec 0 (eta c)
          else
            GRAB :: PUSH [ACCESS 0] :: c
      | eta (i :: c) = i :: eta c

    fun inline nil = nil
      | inline (PUSH c :: GRAB :: c') = dec 0 (subst 0 (inc 0 (inline c)) (inline c'))
      | inline (i :: c) = i :: inline c

    fun eval nil = nil
      | eval (PUSH c :: GRAB :: c') = eval (dec 0 (subst 0 (inc 0 (eval c)) c'))
      | eval (i :: c) = i :: eval c

    fun closed i nil = true
      | closed i (ACCESS j :: c) = i > j andalso closed i c
      | closed i (GRAB :: c) = closed (i + 1) c
      | closed i (PUSH c :: c') = closed i c andalso closed i c'

    fun closures nil = nil
      | closures (ACCESS i :: c) = closures c
      | closures (GRAB :: c) = closures c
      | closures (PUSH c :: c') = let
          val clos = closures c @ closures c'
        in
          if closed 0 c andalso not (List.exists (fn c'' => c = c'') clos) andalso List.length c > 8 then
            c :: clos
          else
            clos
        end

    fun replace _ _ nil = nil
      | replace c i (ACCESS j :: c') = ACCESS j :: replace c i c'
      | replace c i (GRAB :: c') = GRAB :: replace c (i + 1) c'
      | replace c i (PUSH c' :: c'') =
          if c = c' then
            PUSH [ACCESS i] :: replace c i c''
          else
            PUSH (replace c i c') :: replace c i c''

    fun factor c = let
      val clos = closures c
      val c = foldr (fn (_, c) => inc 0 c) c clos
    in
      foldr (fn (c', c) => PUSH c' :: GRAB :: replace c' 0 c) c clos
    end
  end
end
