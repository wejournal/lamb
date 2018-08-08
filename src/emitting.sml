structure Emitting :> EMITTING = struct
  type 'a t = 'a list ref

  fun new () = ref nil
  fun emit x buf = buf := x :: !buf
  fun emitList xs buf = foldl (fn (x, ()) => emit x buf) () xs
  fun emitRevList xs buf = foldr (fn (x, ()) => emit x buf) () xs
  fun toList buf = !buf
  fun setList xs buf = buf := xs
end
