open Sumrange

let%test _ = sumrange 0 1 = 1
let%test _ = sumrange 1 3 = 6
let%test _ = sumrange 3 2 = 0