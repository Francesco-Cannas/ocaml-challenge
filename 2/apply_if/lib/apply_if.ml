let apply_if predicato funzione x = 
  if (predicato x) then (funzione x)
  else x