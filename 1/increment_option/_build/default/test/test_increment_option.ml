open Increment_option

let%test _ = incr_opt (Some 5) = Some 6
let%test _ = incr_opt None = None