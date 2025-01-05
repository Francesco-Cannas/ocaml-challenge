open Palindrome

let%test _ = is_palindrome []
let%test _ = is_palindrome ['a';'n';'n';'a']
let%test _ = is_palindrome ['r';'a';'d';'a';'r']
let%test _ = is_palindrome ['a';'n';'n';'e'] = false
let%test _ = is_palindrome ['z';'a';'n';'n';'a'] = false