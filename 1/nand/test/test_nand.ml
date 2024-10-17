open Nand

let%test "nand_true_true" = (nand (true, true)) = false
let%test "nand_true_false" = (nand (true, false)) = true
let%test "nand_false_true" = (nand (false, true)) = true
let%test "nand_false_false" = (nand (false, false)) = true