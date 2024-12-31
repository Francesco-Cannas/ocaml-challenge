open Apply_if

let is_even = fun x -> x mod 2 = 0;;
let is_odd = fun x -> not (is_even x);;
let double x = x * 2;;

let%test _ = apply_if is_even double 4 = 8
let%test _ = apply_if is_even double 5 = 5
let%test _ = apply_if is_odd double 4 = 4
let%test _ = apply_if is_odd double 5 = 10