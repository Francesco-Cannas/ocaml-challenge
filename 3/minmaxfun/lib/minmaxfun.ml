type 'a option = Some of 'a | None

let minmaxfun funzione a b =
  if a > b then None
  else
    let rec aux i min max =
      if i > b then Some (min, max)
      else
        let value = funzione i in
        let new_min = if value < min then value else min in
        let new_max = if value > max then value else max in
        aux (i + 1) new_min new_max
    in aux a (funzione a) (funzione a)