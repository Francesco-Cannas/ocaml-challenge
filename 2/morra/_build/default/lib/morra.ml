type winner = Player | Computer | Tie ;;

let win (hp, gp) =
  let hc = Random.int(5) in
  let gc = Random.int(10) in
  match (hp, gp) with 
    _ when (gp = (hp + hc) && gc != (hp + hc)) -> ((hc, gc), Player)
 | _ when (gp != (hp + hc) && gc = (hp + hc)) -> ((hc, gc), Computer)
 | _ -> ((hc, gc), Tie)