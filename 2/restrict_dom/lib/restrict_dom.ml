let restrict f predicato = 
  fun x -> 
    if (predicato x) then Some (f x)
    else None