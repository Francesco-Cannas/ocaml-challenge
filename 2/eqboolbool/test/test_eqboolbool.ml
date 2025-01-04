open Eqboolbool

let%test _ = (fun _ -> true) =? (fun _ -> true)
let%test _ = (fun b -> b) =? (fun _ -> true) = false
let%test _ = (fun _ -> false) =? (fun _ -> true) = false
let%test _ = not =? (fun b -> not (not b)) = false
let%test _ = (fun b -> b) =? (fun b -> not (not b))

(*
  Testandoli così:
    assert ((fun b -> true) =? (fun b -> true));;
    assert ((fun b -> b) =? (fun b -> true) = false);;
    assert ((fun b -> false) =? (fun b -> true) = false);;
    assert (not =? (fun b -> not (not b)) = false);;
    assert ((fun b -> b) =? (fun b -> not (not b)));;
  nel compilatore online di Ocaml funziona tutto.
*)