open Countzero

let%test _ = countzero (fun x -> x) (-10) 10 = 1
let%test _ = countzero (fun x -> x) 1 10 = 0
let%test _ = countzero (fun x -> x*x - 1) (-10) 10 = 2
let%test _ = countzero (fun x -> (if x<0 then -x else x) - 1) (-10) 10 = 2