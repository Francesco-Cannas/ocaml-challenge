open Straight

let%test _ = straight (Card(1, S), Card(2, H), Card(3, D), Card(4, C), Card(5, S)) = true
let%test _ = straight (Card(10, S), Card(9, H), Card(8, D), Card(7, C), Card(6, S)) = true
let%test _ = straight (Card(1, S), Card(3, H), Card(4, D), Card(5, C), Card(6, S)) = false
let%test _ = straight (Card(1, S), Card(2, H), Card(3, D), Card(5, C), Card(6, S)) = false
let%test _ = straight (Card(1, S), Card(2, S), Card(3, S), Card(4, S), Card(5, S)) = true