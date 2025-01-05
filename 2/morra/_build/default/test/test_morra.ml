open Morra

let%test _ = 
  let ((_, _), winner) = win (2, 5) in
  match winner with
  | Tie -> true
  | _ -> false