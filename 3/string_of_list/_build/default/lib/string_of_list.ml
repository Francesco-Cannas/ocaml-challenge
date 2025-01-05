let string_of_list lst = match lst with
  | [] -> "[]"
  | [head] -> "[" ^ string_of_int head ^ "]"
  | head :: tail -> "[" ^ string_of_int head ^ (List.fold_left (fun acc x -> acc ^ ";" ^ string_of_int x) "" tail) ^ "]"