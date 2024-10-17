open Highest_card_wins

let%test _ = win Joker (Val 5) = true
let%test _ = win (Val 5) Joker = false
let%test _ = win Joker Joker = false
let%test _ = win (Val 7) (Val 5) = true
let%test _ = win (Val 5) (Val 7) = false
let%test _ = win (Val 5) (Val 5) = false
let%test _ = win (Val 11) (Val 5) = false 