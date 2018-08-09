structure AST :> AST = struct
  structure Type = struct
    datatype t =
      VAR of id
    | CON of id
    | ARR of (t * t) node

    fun eval (VAR x) = Type.VAR x
      | eval (CON x) = Type.CON x
      | eval (ARR (r, (T, U))) = Type.ARR (r, (eval T, eval U))
  end

  structure Exp = struct
    datatype t =
      VAR of id
    | APP of (t * t) node
    | ABS of (id * Type.t option * t) node
    | LET of (id * Type.t option * t * t) node

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
