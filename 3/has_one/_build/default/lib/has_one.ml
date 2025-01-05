let has_one number = 
  if number < 0 then failwith "Errore!"
  else 
    let rec contains_one n = 
      if (n = 0) then false
      else if (n mod 10 = 1) then true
      else contains_one (n / 10)
    in contains_one number