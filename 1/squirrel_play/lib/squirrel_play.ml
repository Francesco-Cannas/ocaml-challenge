type season = Spring | Summer | Autumn | Winter

let squirrel_play temperatura season = match (temperatura, season) with
    _, _ when temperatura > 15 && temperatura < 30 -> true
  | _, _ when (temperatura > 15 && temperatura < 35) && season = Summer -> true
  | _, _ -> false