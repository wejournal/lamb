structure Inferring :> INFERRING = struct
  fun infer t = let
    val (t', T, C) = ConstraintTyping.constraint_type (ConstraintTyping.new ()) nil t
    val S = Unifying.unify C
    val U = Type.subst S T
    val u = Unifying.substTypedTerm S t'
  in
    (u, U)
  end
end
