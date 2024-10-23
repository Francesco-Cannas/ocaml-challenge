open Maxnat

let%test _ = max_nat 2 5 = 5
let%test _ = max_nat 5 2 = 5
let%test _ = try max_nat (-2) 5 |> fun _ -> false with _ -> true
let%test _ = try max_nat 2 (-5) |> fun _ -> false with _ -> true
let%test _ = try max_nat (-2) (-5) |> fun _ -> false with _ -> true