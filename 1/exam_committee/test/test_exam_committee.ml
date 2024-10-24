open Exam_committee

let%test _ = decide_exam StrongAccept StrongAccept StrongAccept = true
let%test _ = decide_exam StrongAccept WeakAccept WeakAccept = true
let%test _ = decide_exam StrongReject WeakAccept WeakAccept = false
let%test _ = decide_exam StrongReject StrongReject StrongReject = false
let%test _ = decide_exam WeakReject WeakAccept WeakAccept = true
let%test _ = decide_exam WeakReject WeakReject WeakReject = false
let%test _ = decide_exam WeakAccept WeakAccept WeakAccept = true
let%test _ = decide_exam StrongAccept WeakReject WeakAccept = true
let%test _ = decide_exam StrongReject WeakReject WeakAccept = false