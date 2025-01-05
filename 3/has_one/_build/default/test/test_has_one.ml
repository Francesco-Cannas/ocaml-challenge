open Has_one

let%test _ = has_one 10 = true
let%test _ = has_one 220 = false
let%test _ = has_one 911 = true
let%test _ = has_one 451 = true
let%test _ = try has_one (-1) |> fun _ -> false with _ -> true