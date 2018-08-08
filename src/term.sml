val region : id -> region = #1
val name : id -> string = #2

structure Term :> TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
