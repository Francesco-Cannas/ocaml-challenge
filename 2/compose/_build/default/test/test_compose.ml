open Compose

let double x = x * 2;;
let square x = x * x;;
let%test _ = (comp square double) 3 = 36;;
let%test _ = (comp double square) 3 = 18;;
let%test _ = (comp (fun b -> if b then 0 else 1) (fun x -> x>0)) 3 = 0;;
let%test _ = (comp (fun b -> if b then 0 else 1) (fun x -> x>0)) 0 = 1;;