let max_nat a b = match (a, b) with
    _, _ when a<0 || b<0 -> failwith("Errore!")
  |  _, _ when a=b -> failwith("I numeri sono uguali!")
  | _ when a>b -> a
  | _ when a<b -> b
  | _ -> failwith ("Unexpected case")