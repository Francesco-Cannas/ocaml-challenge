open In_range

let%test _ = in_range 7 5 10 = true
let%test _ = in_range 5 5 10 = true
let%test _ = in_range 10 5 10 = true
let%test _ = in_range 20 5 10 = false