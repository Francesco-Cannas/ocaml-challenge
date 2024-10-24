open Fractions

let%test _ = compare_posfrac (1,2) (2,4) = 0
let%test _ = compare_posfrac (1,2) (1,3) = 1
let%test _ = compare_posfrac (1,2) (2,3) = -1
let%test _ = compare_frac (-1,2) (-2,4) = 0
let%test _ = compare_frac (-3,2) (1,3) = -1
let%test _ = compare_frac (4,9) (-2,3) = 1