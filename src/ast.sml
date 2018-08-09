structure AST :> AST = struct
  structure Type = struct
    datatype t =
      VAR of id
    | CON of id
    | ARR of (t * t) node

    fun toType (VAR x) = Type.VAR x
      | toType (CON x) = Type.CON x
      | toType (ARR (r, (T, U))) = Type.ARR (r, (toType T, toType U))
  end

  structure Exp = struct
    datatype t =
      VAR of id
    | APP of (t * t) node
    | ABS of (id * Type.t option * t) node
    | LET of (id * Type.t option * t * t) node

    fun toTypedTerm _ (VAR x) =
          TypedTerm.VAR x
      | toTypedTerm gensym (APP (r, (e1, e2))) =
          TypedTerm.APP (r, (toTypedTerm gensym e1, toTypedTerm gensym e2))
      | toTypedTerm gensym (ABS (r, (x, Topt, e))) = let
          val T =
            case Topt of
              NONE =>
                Type.toType (Type.VAR (region x, Int.toString (Gensym.gensym gensym)))
            | SOME T =>
                Type.toType T
        in
          TypedTerm.ABS (r, (x, T, toTypedTerm gensym e))
        end
      | toTypedTerm gensym (LET (r, (x, Topt, e1, e2))) = let
          val T =
            case Topt of
              NONE =>
                Type.toType (Type.VAR (region x, Int.toString (Gensym.gensym gensym)))
            | SOME T =>
                Type.toType T
        in
          TypedTerm.LET (r, (x, T, toTypedTerm gensym e1, toTypedTerm gensym e2))
        end

    fun erase (VAR x) = Term.VAR x
      | erase (APP (r, (e1, e2))) = Term.APP (r, (erase e1, erase e2))
      | erase (ABS (r, (x, _, e))) = Term.ABS (r, (x, erase e))
      | erase (LET (r, (x, _, e1, e2))) = Term.APP (r, (Term.ABS (r, (x, erase e2)), erase e1))
  end

  structure Decl = struct
    datatype t =
      TYPE of id node
    | VAL of (id * Type.t) node
    | DEF of (id * Type.t option * Exp.t) node
  end

  structure Program = struct
    type t = Decl.t list
  end
end
