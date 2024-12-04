type suit = S | H | D | C;;
type card = Card of int * suit;;

let rndSuit () = match Random.int(4) with
    0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C 
  | _ -> failwith "Errore" ;;

let rndCard () = 
  Card (1 + Random.int(10), rndSuit());;

let rndHand () =
  (rndCard(), rndCard(), rndCard(), rndCard(), rndCard());;

let equalpoker (Card(n1,s1), Card(n2,s2), Card(n3,s3), Card(n4,s4)) =
  n1=n2 && n2=n3 && n3=n4 && s1<>s2 && s1<>s3 && s1<>s4 && s2<>s3 && s2<>s4 && s3<>s4;;

let poker (c1,c2,c3,c4,c5) =  
  equalpoker (c1,c2,c3,c4) || equalpoker (c1,c2,c3,c5) || equalpoker (c1,c2,c4,c5) || equalpoker (c1,c3,c4,c5) || equalpoker(c2,c3,c4,c5) ;;