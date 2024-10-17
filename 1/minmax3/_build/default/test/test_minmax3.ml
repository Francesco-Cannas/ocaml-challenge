open Minmax3

let%test _ = minmax3(10, 15, 30) = (30, 10)
let%test _ = minmax3(40, 30, 20) = (40, 20)
let%test _ = minmax3(25, 65, 30) = (65, 25)