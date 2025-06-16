(* [[1; 2]; [3; 4]; [5; 6]] *)
(* concatenate [1; 2] [[3; 4]; [5; 6]] *)
(* concatenate [1; 2] (concatenate [3; 4] [[5; 6]]) *)
(* concatenate [1; 2] (concatenate [3; 4] (concatenate [5; 6] [])) *)
(* [1; 2; 3; 4; 5; 6] *)
let rec flatten_single_nested list =
  match list with
  | [] -> []
  | head :: tail -> Concatenate.concatenate_tail head (flatten_single_nested tail)
;;


(* [[1; 2]; [3; 4]; [5; 6]] *)
(* aux ([] + [1; 2]) [[3; 4]; [5; 6]] *)
(* aux ([1; 2] + [3; 4]) [[5; 6]] *)
(* aux ([1; 2; 3; 4] + [5; 6]) [] *)
(* [1; 2; 3; 4; 5; 6] *)
let flatten_single_nested_tail list =
  let rec aux acc list =
    match list with
    | [] -> acc
    | head :: tail -> aux (Concatenate.concatenate_tail acc head) tail
  in
  aux [] list
;;