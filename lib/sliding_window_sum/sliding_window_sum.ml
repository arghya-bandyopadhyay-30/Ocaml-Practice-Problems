(* [1;2;3;4] and k = 3 *)
(* [2;3;4] and k = 2 *)
(* [3;4] and k = 1 *)
(* [4] and k = 0 *)
let rec has_k_elements list k =
  match (k, list) with
  | (0, _) -> true
  | (_, []) -> false
  | (k, _ :: tail) -> has_k_elements tail (k - 1)
;;

(* acc = 0 and [1; 2; 3] *)
(* acc = 1 and [2; 3] *)
(* acc = 3 and [3] *)
(* acc = 6 and [] *)
let sum_k_elements list k =
  let rec aux acc list k =
    match (k, list) with
    | (0, _) -> acc
    | (_, []) -> 0
    | (k, head :: tail) -> aux (acc + head) tail (k - 1)
  in
  aux 0 list k
;;


(* Check if has k elements in the list *)
(* Sum the k elements from the head *)
(* Move to next element *)
let sliding_sum list k =
  let rec aux acc list =
    match list with
    | [] -> Reverse.reverse acc
    | _ :: tail -> 
      if has_k_elements list k then
        let sum = sum_k_elements list k in
        aux (sum :: acc) tail
      else
        Reverse.reverse acc
  in
  aux [] list
;;