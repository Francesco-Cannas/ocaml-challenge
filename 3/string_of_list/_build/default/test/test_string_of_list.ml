open String_of_list

let%test _ = string_of_list [] = "[]"
let%test _ = string_of_list [1] = "[1]"
let%test _ = string_of_list [1;2;3] = "[1;2;3]"