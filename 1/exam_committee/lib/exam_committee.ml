type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam v1 v2 v3 = match (v1, v2, v3) with  
    (StrongReject, _, _) | (_, StrongReject, _) | (_, _, StrongReject) -> false
  | (StrongAccept, StrongAccept, _) | (StrongAccept, _, StrongAccept) | (_, StrongAccept, StrongAccept) -> true
  | (WeakAccept, WeakAccept, _) | (WeakAccept, _, WeakAccept) | (_, WeakAccept, WeakAccept) -> true
  | (StrongAccept, WeakAccept, _) | (StrongAccept, _, WeakAccept) | (WeakAccept, StrongAccept, _) | (WeakAccept, _, StrongAccept) | (_, StrongAccept, WeakAccept) | (_, WeakAccept, StrongAccept) -> true
  | _ -> false