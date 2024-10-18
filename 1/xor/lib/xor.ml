(*
let xor a b = 
  if (a || b) && (not (a && b)) then true
  else false
*)

let xor a b = match a, b with
    true, true -> false
  | false, false -> false
  | _, _ -> true