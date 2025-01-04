open Eqboolbool

let%test _ = (fun _ -> true) =? (fun _ -> true)
let%test _ = (fun b -> b) =? (fun _ -> true) = false
let%test _ = (fun _ -> false) =? (fun _ -> true) = false
let%test _ = not =? (fun b -> not (not b)) = false
let%test _ = (fun b -> b) =? (fun b -> not (not b))