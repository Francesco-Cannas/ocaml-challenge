let mux2 (s0: bool) (a: bool) (b: bool) : bool = match s0 with
   true -> a
  | false -> b

let mux4 (s1: bool) (s0: bool) (a0: bool) (a1: bool) (a2: bool) (a3: bool) : bool =
  mux2 s1 (mux2 s0 a1 a0) (mux2 s0 a3 a2)