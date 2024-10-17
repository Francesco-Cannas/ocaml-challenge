let guess5 numero = match numero with
    _ when numero<1 || numero>5 -> failwith "errore"
  | _ when numero = Random.int(numero+1) -> (numero, true)
  | _ -> (numero, false) 