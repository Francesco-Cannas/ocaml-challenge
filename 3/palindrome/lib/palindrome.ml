let rec rev lst = match lst with
    [] -> []
  | head :: tail -> (rev tail) @ [head]

let is_palindrome lst = 
  if (lst = rev lst) then true
  else false