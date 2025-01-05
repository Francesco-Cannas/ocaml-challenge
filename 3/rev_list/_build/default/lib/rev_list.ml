let rec rev lst = match lst with
    [] -> []
  | head :: tail -> (rev tail) @ [head]