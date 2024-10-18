open Xor

let%test "xor_true_true" = (xor true true) = false
let%test "xor_true_false" = (xor true false) = true
let%test "xor_false_true" = (xor false true) = true
let%test "xor_false_false" = (xor false false) = false