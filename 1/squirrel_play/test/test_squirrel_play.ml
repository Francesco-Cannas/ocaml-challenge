open Squirrel_play

let%test _ = squirrel_play 18 Winter = true
let%test _ = squirrel_play 32 Spring = false
let%test _ = squirrel_play 32 Summer = true