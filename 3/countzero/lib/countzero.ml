let countzero funzione a b = 
  let rec aux count x = 
    if x > b then count
    else if funzione x = 0 then aux (count + 1) (x + 1) 
    else aux (count) (x + 1) 
  in aux 0 a