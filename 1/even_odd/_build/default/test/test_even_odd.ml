open Even_odd

let%test "both players choose correct numbers and sum is even" =
  win (2, 4) = 1

let%test "both players choose correct numbers and sum is odd" =
  win (1, 4) = -1

let%test "first player chooses correct number, second does not" =
  win (3, 6) = 1

let%test "second player chooses correct number, first does not" =
  win (6, 2) = -1

let%test "both players choose incorrect numbers" =
  win (6, 7) = 0

let%test "first player chooses correct number, second chooses incorrect number" =
  win (4, 7) = 1

let%test "second player chooses correct number, first chooses incorrect number" =
  win (7, 3) = -1