structure Term :> TERM = struct
  datatype t =
    VAR of region * id
  | APP of region * t * t
  | ABS of region * (region * id) * t
end
