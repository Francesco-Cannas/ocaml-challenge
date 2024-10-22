open Mux 

let%test _ = (mux4 false false false true false true) = false
let%test _ = (mux4 false true false true false true) = true
let%test _ = (mux4 true false false true false true) = false
let%test _ = (mux4 true true false true false true) = true