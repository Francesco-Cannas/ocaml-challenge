let ( =? ) (f : bool -> bool) (g : bool -> bool) : bool =
  if (f true = g true && f false = g false) then true
  else false