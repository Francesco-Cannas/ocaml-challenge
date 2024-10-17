let max3 (a,b,c) =
  if a > b && a > c then a
  else if b > c then b
  else c

let min3 (a,b,c) =
  if a < b && a < c then a
  else if b < c then b
  else c

let minmax3(a,b,c) = (max3(a,b,c), min3(a,b,c))