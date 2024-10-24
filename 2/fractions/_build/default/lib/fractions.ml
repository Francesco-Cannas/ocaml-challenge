let is_posfrac (numeratore, denominatore) = match (numeratore, denominatore) with
    _, _ when denominatore = 0 -> failwith("Impossibile dividere per zero!")
  | _, _ when numeratore > 0 && denominatore > 0 -> true
  | _, _ when numeratore < 0 || denominatore < 0 -> false
  | _, _  -> failwith("Errore!")

let compare_posfrac (numeratore_a, denominatore_a) (numeratore_b, denominatore_b) = match ((numeratore_a, denominatore_a),(numeratore_b, denominatore_b)) with
    (_, _), (_, _) when (is_posfrac (numeratore_a, denominatore_a)) = false ||  (is_posfrac (numeratore_b, denominatore_b)) = false -> failwith("Errore!")
  | (_, _), (_, _) when numeratore_a*denominatore_b > numeratore_b*denominatore_a -> 1
  | (_, _), (_, _) when numeratore_a*denominatore_b < numeratore_b*denominatore_a -> -1
  | (_, _), (_, _) -> 0

let compare_frac (numeratore_a, denominatore_a) (numeratore_b, denominatore_b) = match ((numeratore_a, denominatore_a),(numeratore_b, denominatore_b)) with
| (_, _), (_, _) when numeratore_a*denominatore_b > numeratore_b*denominatore_a -> 1
| (_, _), (_, _) when numeratore_a*denominatore_b < numeratore_b*denominatore_a -> -1
| (_, _), (_, _) -> 0