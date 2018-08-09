type cursor = int
type region = cursor * cursor
type 'a node = region * 'a
type id = string node

val region : 'a node -> region = #1
val value : 'a node -> 'a = #2

val lookup : id -> (id * 'a) list -> 'a option =
  fn x => Option.map #2 o List.find (fn (y, _) => value x = value y)
