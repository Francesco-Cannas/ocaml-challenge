let consensus3 (f0, f1, f2) n = match (f0 n, f1 n, f2 n) with
    _, _, _ when (f0 n = f1 n) || (f0 n = f2 n) || (f0 n = f1 n && f1 n = f2 n) -> Some (f0 n)
  | _, _, _ when (f1 n = f2 n) -> Some (f1 n) 
  | _, _, _ when (f0 n <> f1 n) && (f1 n <> f2 n) || (f0 n <> f2 n) -> None
  | _, _, _ -> failwith("Errore!")