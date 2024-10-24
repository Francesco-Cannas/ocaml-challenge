let movie_rating v1 v2 v3 = match (v1, v2, v3) with
     _, _, _ when (v1 < 1 || v1 > 5) || (v2 < 1 || v2 > 5) || (v3 < 1 || v3 > 5) -> failwith("Errore!")
   | 5, 5, 5 -> "Masterpiece"
   | (5, 5, v) | (5, v, 5) | (v, 5, 5) when v >= 4 -> "Highly Recommended"
   | (v1, v2, v3) when (v1 >= 4 && v2 >= 4 && v3 >= 3) || (v1 >= 4 && v3 >= 4 && v2 >= 3) || (v2 >= 4 && v3 >= 4 && v1 >= 3) -> "Recommended"
   | _ -> "Mixed Reviews"