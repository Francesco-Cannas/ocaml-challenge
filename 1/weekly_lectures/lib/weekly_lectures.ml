type weekday = Mo | Tu | We | Th | Fr
type course = ALF | LIP

let isLecture day course = match (day, course) with
    _ when (day = Tu || day = Th || day = Fr) && (course = ALF) -> true
  | _ when (day = We || day = Th) && (course = LIP) -> true
  | _ -> false