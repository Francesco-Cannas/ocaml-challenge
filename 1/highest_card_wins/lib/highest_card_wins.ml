type card = Joker | Val of int;;

let aux x = 
  if x>=1 && x<=10 then true
  else false

let max (a, b) = 
  if (aux(a) && aux(b)) && a>b then true
  else false

let win (a:card) (b:card) = match (a, b) with
    (Joker, Val _) -> true
  | (Val _, Joker) -> false
  | (Joker, Joker) -> false
  | (Val a, Val b) -> max(a, b)