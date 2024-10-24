let tris (a, b, c, d) = match (a, b, c, d) with
    _, _, _, _ when (a=b) && (a=c) && (a=d) && (b=c) && (b=d) && (c=d) -> true
  | _, _, _, _  -> false

let hand () =
  let a = Random.int(9) + 1 in
  let b = Random.int(9) + 1 in
  let c = Random.int(9) + 1 in
  let d = Random.int(9) + 1 in
  if tris(a, b, c, d) = true then true
  else false