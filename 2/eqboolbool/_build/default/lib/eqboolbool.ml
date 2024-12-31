

  let ( =? ) (f : bool -> bool) (g : bool -> bool) : bool =
  let test b = f b = g b in
  test true && test false
