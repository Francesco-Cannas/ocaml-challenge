type blood_group = A | B | AB | O

let check_groups paziente1 paziente2 = match paziente1, paziente2 with
    _, _ when paziente1 = paziente2 -> true
  | _, _ when paziente1 = O || paziente2 = O -> true
  | _, _ when (paziente1 = A && paziente2 = AB) || (paziente1 = B && paziente2 = AB) -> true
  | _, _ -> false