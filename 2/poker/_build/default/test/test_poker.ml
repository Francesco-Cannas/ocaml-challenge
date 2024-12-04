open Poker

let%test _ = let hand1 = (Card (10, S), Card (10, H), Card (10, D), Card (10, C), Card (2, S)) in poker hand1 = true;; 
let%test _ = let hand2 = (Card (5, S), Card (5, H), Card (5, D), Card (3, C), Card (2, S)) in poker hand2 = false;; 
let%test _ = let hand3 = (Card (7, S), Card (7, H), Card (7, D), Card (7, C), Card (9, S)) in poker hand3 = true;; 
let%test _ = let hand4 = (Card (1, S), Card (2, H), Card (3, D), Card (4, C), Card (5, S)) in poker hand4 = false;;