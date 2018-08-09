structure Term :> TERM = struct
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
