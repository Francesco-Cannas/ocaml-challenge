open Option_seq

let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

let%test _ = Some square <*> None = None
let%test _ = None <*> Some 2 = None
let%test _ = None <*> (Some double <*> Some 2) = None
let%test _ = Some multiply <*> Some 3 <*> Some 2 = Some 6
let%test _ = Some multiply <*> None <*> Some 2 = None