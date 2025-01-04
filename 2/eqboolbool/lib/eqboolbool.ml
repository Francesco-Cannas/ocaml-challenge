let (=?) (f : bool -> bool) (g : bool -> bool) : bool = 
  (f true = g true) && (f false = g false)