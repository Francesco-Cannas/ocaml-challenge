open Restrict_dom

let f1 = restrict succ (fun x -> x>0);;
let%test _ = f1 1 = Some 2
let%test _ = f1 0 = None

let f2 = restrict (fun (x,y) -> x - y) (fun (x,y) -> x-y>=0);;
let%test _ = f2 (5,2) = Some 3
let%test _ = f2 (5,6) = None