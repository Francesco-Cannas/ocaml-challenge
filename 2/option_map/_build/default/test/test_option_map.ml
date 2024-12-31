open Option_map

let double x = x * 2;;
let square x = x * x;;

let%test _ = option_map double (Some 3) = Some 6
let%test _ = option_map double None = None
let%test _ = option_map double (Some (square 3)) = Some 18
let%test _ = option_map square (option_map double None) = None