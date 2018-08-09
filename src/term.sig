signature TERM = sig
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
