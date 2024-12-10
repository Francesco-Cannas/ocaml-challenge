open Both_true

let is_positive x = x > 0;;
let is_even x = x mod 2 = 0;;
let is_positive_and_even = both_true is_positive is_even;;
let%test _ = is_positive_and_even 4 = true
let%test _ = is_positive_and_even 3 = false