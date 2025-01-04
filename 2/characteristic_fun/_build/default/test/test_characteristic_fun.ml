open Characteristic_fun

let%test _ = f1 0 = 0
let%test _ = f2 1 = 1
let%test _ = f3 50 = 1
let%test _ = f5 100 = 1
let%test _ = f6 4 = 1
let%test _ = f7 42 = 1
let%test _ = f8 5 = 1
let%test _ = f9 9 = 1
let%test _ = f10 15 = 1
let%test _ = f11 24 = 1
let%test _ = f12 26 = 1
let%test _ = f13 10 = 1
let%test _ = f14 1 = 1
let%test _ = f15 7 = 1
let%test _ = f15 1 = 0