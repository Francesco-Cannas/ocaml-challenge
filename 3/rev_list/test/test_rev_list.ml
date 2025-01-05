open Rev_list

let%test _ = rev [1;2;3;4;5] = [5; 4; 3; 2; 1]
let%test _ = rev ["a"; "b"; "c"] = ["c"; "b"; "a"] 
let%test _ = rev [] = []