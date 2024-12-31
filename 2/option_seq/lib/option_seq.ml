let (<*>) funzione input = match funzione with
    None -> None
  | Some funzione -> (match input with 
    | None -> None
    | Some x -> Some (funzione x)
)