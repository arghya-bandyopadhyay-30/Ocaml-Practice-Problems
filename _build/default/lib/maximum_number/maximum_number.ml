(* [1; 3; 2; 4; 2; 0] *)
(* acc = 1 maximum_number [3; 2; 4; 2; 0] *)
(* acc = 3 maximum_number [2; 4; 2; 0] *)
(* acc = 4 maximum_number [2; 0] *)
(* acc = 4 maximum_number [0] *)
(* acc = 4 maximum_number [] *)
(* 4 *)
let rec maximum_number acc list =
  match list with
  | [] -> acc
  | head :: tail ->
      let new_acc = if head > acc then head else acc in
      maximum_number new_acc tail
;;


let maximum_number_tail list =
  match list with
  | [] -> failwith "List is empty, no maximum value"
  | head :: tail -> 
    let rec aux acc list =
      match list with
      | [] -> acc
      | head :: tail ->
          let new_acc = if head > acc then head else acc in
          aux new_acc tail
    in
    aux head tail
;;

