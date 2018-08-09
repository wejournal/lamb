signature AST = sig
  structure Type : sig
    datatype t =
      VAR of id
    | CON of id
    | ARR of (t * t) node

    val toType : t -> Type.t
  end

  structure Exp : sig
    datatype t =
      VAR of id
    | APP of (t * t) node
    | ABS of (id * Type.t option * t) node
    | LET of (id * Type.t option * t * t) node

    val toTypedTerm : Gensym.t -> t -> TypedTerm.t
    val erase : t -> Term.t
  end

  structure Decl : sig
    datatype t =
      TYPE of id node
    | VAL of (id * Type.t) node
    | DEF of (id * Type.t option * Exp.t) node
  end

  structure Program : sig
    type t = Decl.t list
  end
end
