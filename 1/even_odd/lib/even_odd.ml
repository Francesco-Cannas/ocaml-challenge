let is_even x = match x with
    _ when (x mod 2) = 0 -> true
  | _ -> false

let aux x = match x with
    _ when x>=1 && x<=5 -> true
  | _ -> false

let win (a, b) = match (a, b) with
    _, _ when not(aux(a)) && not(aux(b)) -> 0
  | _, _ when not(aux(a)) && aux(b) -> -1
  | _, _ when aux(a) && not(aux(b)) -> 1
  | _, _ when is_even(a+b) -> 1
  | _, _ when not(is_even(a+b)) -> -1
  | _ -> failwith "undefined"