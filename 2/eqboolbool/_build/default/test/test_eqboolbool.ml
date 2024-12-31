open Eqboolbool

let%test _ = (fun b -> true) =? (fun b -> true)
let%test _ = (fun b -> b) =? (fun b -> true) = false
let%test _ = (fun b -> false) =? (fun b -> true) = false
let%test _ = not =? (fun b -> not (not b)) = false
let%test _ = (fun b -> b) =? (fun b -> not (not b))