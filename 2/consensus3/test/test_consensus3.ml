open Consensus3

let%test _ = consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5
let%test _ = consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2
let%test _ = consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None