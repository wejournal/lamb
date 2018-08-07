type cursor = int
type region = cursor * cursor
type 'a node = region * 'a
type id = string node

signature TERM = sig
  datatype t =
    VAR of id
  | APP of (t * t) node
  | ABS of (id * t) node
end
