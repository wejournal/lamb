val region : 'a node -> region = #1
val value : 'a node -> 'a = #2

structure Term :> TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
