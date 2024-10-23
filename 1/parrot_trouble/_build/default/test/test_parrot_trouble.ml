open Parrot_trouble

let%test _ = parrot_trouble true 6 = Some true  (* Parrot is talking at 6am, which is prohibited *)
let%test _ = parrot_trouble true 21 = Some true (* Parrot is talking at 9pm, which is prohibited *)
let%test _ = parrot_trouble true 8 = Some false (* Parrot is talking at 8am, which is allowed *)
let%test _ = parrot_trouble false 6 = Some false(* Parrot is not talking at 6am *)
let%test _ = parrot_trouble true 24 = None      (* Invalid hour *)
let%test _ = parrot_trouble false 24 = None     (* Invalid hour *)
let%test _ = parrot_trouble false 12 = Some false (* Parrot is not talking at noon *)