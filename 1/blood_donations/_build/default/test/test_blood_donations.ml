open Blood_donations

let%test _ = check_groups O AB = true
let%test _ = check_groups A B = false
let%test _ = check_groups AB AB = true