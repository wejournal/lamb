structure DeBruijnIndexedTerm :> DE_BRUIJN_INDEXED_TERM = struct
  datatype t =
    VAR of int
  | APP of t * t
  | ABS of t

  type env = (id * int) list

  exception NotInScope of id

  fun lookup x E  =
    case List.find (fn (y, _) => name x = name y) E of
      NONE =>
        raise NotInScope x
    | SOME (_, i) =>
        VAR i

  fun compile E (Term.VAR x) =
        lookup x E
    | compile E (Term.APP (_, (e1, e2))) =
        APP (compile E e1, compile E e2)
    | compile E (Term.ABS (_, (x, e))) =
        ABS (compile ((x, 0) :: map (fn (y, i) => (y, i + 1)) E) e)
end
