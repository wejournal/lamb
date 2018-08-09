structure TypedTerm :> TYPED_TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * Type.t * t) node
  | LET of (id * Type.t * t * t) node

  fun implicit _ (AST.Exp.VAR x) =
        VAR x
    | implicit gensym (AST.Exp.APP (r, (e1, e2))) =
        APP (r, (implicit gensym e1, implicit gensym e2))
    | implicit gensym (AST.Exp.ABS (r, (x, Topt, e))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (region x, Int.toString (Gensym.gensym gensym))
          | SOME T =>
              AST.Type.eval T
      in
        ABS (r, (x, T, implicit gensym e))
      end
    | implicit gensym (AST.Exp.LET (r, (x, Topt, e1, e2))) = let
        val T =
          case Topt of
            NONE =>
              Type.VAR (region x, Int.toString (Gensym.gensym gensym))
          | SOME T =>
              AST.Type.eval T
      in
        LET (r, (x, T, implicit gensym e1, implicit gensym e2))
      end
end
