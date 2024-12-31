let option_map funzione input = match input with
    None -> None
  | Some x -> Some (funzione x)