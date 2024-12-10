open Flip_curry

let sub x y = x - y;;
let flipped_sub = flip sub;;
let%test _ = flipped_sub 3 10 = 7
let%test _ = flipped_sub 10 3 = -7