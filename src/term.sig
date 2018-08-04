type id = string
type cursor = int
type region = cursor * cursor

signature TERM = sig
  datatype t =
    VAR of region * id
  | APP of region * t * t
  | ABS of region * (region * id) * t
end
