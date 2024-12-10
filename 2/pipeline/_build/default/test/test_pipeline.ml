open Pipeline

let double x = x * 2;;
let square x = x * x;;
let%test _ = 3 |> double = 6
let%test _ = 3 |> square = 9
let%test _ = 3 |> square |> double = 18
let%test _ = 3 |> double |> square = 36
let%test _ = 3 |> double |> square |> double = 72
let%test _ = "hello" |> String.trim |> String.uppercase_ascii = "HELLO"