structure Gensym :> GENSYM = struct
  type t = int ref

  fun new () = ref 0

  fun gensym fresh = let
    val i = !fresh
  in
    fresh := i + 1
  ; i
  end
end
