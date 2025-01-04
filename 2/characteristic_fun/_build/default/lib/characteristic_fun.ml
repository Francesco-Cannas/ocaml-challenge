let f1 numero = match numero with
    _ when numero >= 0 -> 0
  | _ -> failwith "Errore!"

let f2 numero = match numero with
    _ when (numero = 0 || numero = 1 || numero = 2) -> 1
  | _ when (numero < 0 || numero > 2) -> 0
  | _ -> failwith "Errore!"

let f3 numero = match numero with
    _ when (numero > 0 || numero < 100) -> 1
  | _ when (numero < 0 || numero > 100) -> 0
  | _ -> failwith "Errore!"

let f4 (numero : int) : int = match numero with
  _ -> failwith "Errore!"

let f5 numero = match numero with
    _ when numero >= 0 -> 1
  | _ -> failwith "Errore!"

let f6 numero = match numero with
    _ when (numero mod 2 = 0) -> 1
  | _ when (numero < 0 ) -> 0
  | _ -> failwith "Errore!"

let f7 numero = match numero with
    _ when numero >= 0 -> 1
  | _ -> failwith "Errore!"

let f8 numero = match numero with
    _ when numero >= 0 -> 1
  | _ -> failwith "Errore!"

let f9 numero =
  if numero < 0 then failwith "Errore!"
  else
    let rec is_perfect_square n i =
      if i * i = n then true
      else if i * i > n then false
      else is_perfect_square n (i + 1)
    in
if is_perfect_square numero 0 then 1 
else 0  

let f10 numero =
  if numero < 0 then failwith "Errore!"
  else
    let rec exists_y y =
      if (y < 3 && 7 < numero * y && numero * y < 20) then true
      else if (y >= 3) then false
      else exists_y (y + 1)
    in
if exists_y 0 then 1 
else 0

let f11 numero =
  if numero < 0 then failwith "Errore!"
  else
    let rec exists_y y =
      if (numero < 50 && numero = y + y) then true
      else if (y >= numero) then false
      else exists_y (y + 1)
    in
if exists_y 0 then 1 
else 0

let f12 numero =
  if numero < 0 then failwith "Errore!"
  else
    let rec exists_y y =
      if (y * 2 = numero && 0 < 2 * y && 2 * y < 50) then true
      else if (y >= numero) then false
      else exists_y (y + 1)
    in
if exists_y 0 then 1 
else 0

let f13 numero =
  if numero < 0 then failwith "Errore!"
  else
    let rec exists_xy x y = 
      if (x + y = numero && x * y <= 20) then true 
      else if (x >= numero) then false 
      else if (y >= numero) then exists_xy (x + 1) 0 
      else exists_xy x (y + 1)
    in
if exists_xy 0 0 then 1 
else 0

let f14 numero =
  if numero < 0 then failwith "Errore!"
  else 
    let rec for_all_y y = 
      if (y < numero && y >= 2) then false 
      else if (y >= numero) then true 
      else for_all_y (y + 1) 
    in 
if for_all_y 0 then 1
else 0

let f15 numero =
  if numero < 0 then failwith "Errore!"
  else 
    let rec for_all_y y = 
      if y > numero then true
      else if (numero mod y = 0) && (y <> 1 && y <> numero) then false 
      else for_all_y (y + 1) 
    in 
if numero = 1 then 0
else if for_all_y 2 then 1
else 0