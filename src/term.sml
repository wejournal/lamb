val region : 'a node -> region = #1
val value : 'a node -> 'a = #2
val lookup : id -> (id * 'a) list -> 'a option =
  fn x => Option.map #2 o List.find (fn (y, _) => value x = value y)

structure Term :> TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
