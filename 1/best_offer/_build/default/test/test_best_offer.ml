open Best_offer

let%test _ = best_offer (Some 100) (Some 200) (Some 150) = Some 200
let%test _ = best_offer (Some 100) None (Some 150) = Some 150
let%test _ = best_offer None None None = None
let%test _ = best_offer None (Some 300) None = Some 300