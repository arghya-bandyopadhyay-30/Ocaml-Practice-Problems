(* partition is_even [1;2;3;4;5] *)
(* is_even 1 --> false : add to false_list *)
(* is_even 2 --> true : add to true_list *)
(* is_even 3 --> false : add to false_list *)
(* is_even 4 --> true : add to true_list *)
(* is_even 5 --> false : add to false_list *)
(* Result: ([2; 4], [1; 3; 5]) *)
let partition func list =
  let rec aux true_list false_list remaining = 
    match remaining with
    | [] -> (Reverse.reverse true_list, Reverse.reverse false_list)
    | head :: tail ->
      if func head then
        aux (head :: true_list) false_list tail
      else
        aux true_list (head :: false_list) tail
  in
  aux [] [] list
;;