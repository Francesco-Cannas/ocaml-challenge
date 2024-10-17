let max_offer (a, b) = 
  if a > b then a
  else b

let max_offer3 (a, b, c) = 
  if a > b && a > c then a
  else if b > c then b
  else c

let best_offer (offer_a : int option) (offer_b : int option) (offer_c : int option) : int option = match (offer_a, offer_b, offer_c) with
  | (None, None, None) -> None
  | (Some offer_a, None, None) -> Some offer_a   
  | (None, Some offer_b, None) -> Some offer_b   
  | (None, None, Some offer_c) -> Some offer_c
  | (Some offer_a, Some offer_b, None) -> Some (max_offer (offer_a, offer_b))
  | (None, Some offer_b, Some offer_c) -> Some (max_offer (offer_b, offer_c))
  | (Some offer_a, None, Some offer_c) -> Some (max_offer (offer_a, offer_c))
  | (Some offer_a, Some offer_b, Some offer_c) -> Some (max_offer3 (offer_a, offer_b, offer_c))