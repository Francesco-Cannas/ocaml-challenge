let (<|>) inputA inputB = match inputA with
    None -> inputB
  | Some _ -> inputA