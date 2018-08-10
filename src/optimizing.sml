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

    fun replace _ _ nil = nil
      | replace i c [ACCESS j] = if i = j then c else [ACCESS j]
      | replace i c (ACCESS j :: c') = if i = j then c @ (replace i c c') else ACCESS j :: replace i c c'
      | replace i c (GRAB :: c') = GRAB :: replace (i + 1) (inc 0 c) c'
      | replace i c (PUSH c' :: c'') = PUSH (replace i c c') :: replace i c c''

    fun inline nil = nil
      | inline (PUSH c :: GRAB :: c') = dec 0 (replace 0 (inc 0 c) (inline c'))
      | inline (i :: c) = i :: inline c
  end
end
