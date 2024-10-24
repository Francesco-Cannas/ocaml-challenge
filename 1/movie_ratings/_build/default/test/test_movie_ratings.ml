open Movie_ratings

let%test _ = movie_rating 5 5 5 = "Masterpiece"
let%test _ = movie_rating 5 5 4 = "Highly Recommended"
let%test _ = movie_rating 5 4 5 = "Highly Recommended"
let%test _ = movie_rating 4 5 5 = "Highly Recommended"
let%test _ = movie_rating 4 4 3 = "Recommended"
let%test _ = movie_rating 4 3 4 = "Recommended"
let%test _ = movie_rating 3 4 4 = "Recommended"
let%test _ = movie_rating 4 4 2 = "Mixed Reviews"
let%test _ = movie_rating 2 3 4 = "Mixed Reviews"
let%test _ = try let _ = movie_rating 6 5 5 in false with Failure _ -> true
let%test _ = try let _ = movie_rating 5 0 5 in false with Failure _ -> true