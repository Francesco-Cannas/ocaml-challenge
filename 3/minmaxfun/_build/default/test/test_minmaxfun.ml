open Minmaxfun

let%test _ = minmaxfun (fun x -> x) (-2) 5 = Some (-2,5)
let%test _ = minmaxfun (fun x -> x) 5 (-2) = None
let%test _ = minmaxfun (fun x -> x) 5 5 = Some (5,5)
let%test _ = minmaxfun (fun x -> x * x) (-2) 5 = Some (0,25)

let curve x = x |> Float.of_int |> fun x -> x ** 3.0 -. 3.0 *. x;;
let arccos x = x |> Float.of_int |> Float.acos;;

let%test _ = minmaxfun curve (-2) 2 = Some (-2.0,2.0)
let%test _ = minmaxfun arccos (-1) 1 = Some (0., Float.pi)