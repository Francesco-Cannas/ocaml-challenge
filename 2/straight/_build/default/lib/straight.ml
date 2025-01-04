type suit = S | H | D | C;;
type card = Card of int * suit;;
  
let straight (Card(n1,_), Card(n2,_), Card(n3,_), Card(n4,_), Card(n5,_)) =
  let sorted_cards = List.sort compare [n1; n2; n3; n4; n5] in 
  match sorted_cards with
  | [a; b; c; d; e] when (b = a + 1 && c = b + 1 && d = c + 1 && e = d + 1) -> true
  | _ -> false