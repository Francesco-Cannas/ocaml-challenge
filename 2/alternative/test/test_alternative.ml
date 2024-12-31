open Alternative

let%test _ = None <|> Some false = Some false
let%test _ = Some true <|> None <|> Some false = Some true
let%test _ = Some 3 <|> None = Some 3
let%test _ = Some "cat" <|> Some "dog" = Some "cat"
let%test _ = None <|> None <|> Some "dog" <|> None = Some "dog"