let parrot_trouble cheat time = match (cheat, time) with
    _, _ when time < 0 || time > 23 -> None
  | _, _ when (cheat = true) && (time < 7 || time > 20) -> Some true
  | _, _ -> Some false