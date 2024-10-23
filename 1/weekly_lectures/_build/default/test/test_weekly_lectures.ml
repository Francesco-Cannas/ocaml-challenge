open Weekly_lectures

let%test _ = isLecture Tu ALF = true
let%test _ = isLecture Th ALF = true
let%test _ = isLecture Fr ALF = true
let%test _ = isLecture We LIP = true
let%test _ = isLecture Th LIP = true
let%test _ = isLecture Mo ALF = false
let%test _ = isLecture Mo LIP = false