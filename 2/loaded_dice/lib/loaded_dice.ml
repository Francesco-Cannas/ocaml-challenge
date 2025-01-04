let dice numero = 
  if (numero < 0 || numero > 100) then failwith "Errore!"
  else 
    let throw_dice = Random.int(100) in
      if throw_dice < numero then 6
      else (throw_dice mod 5) + 1