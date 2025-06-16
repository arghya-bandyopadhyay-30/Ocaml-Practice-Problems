(* Without tail recursion *)
(* [1;2;3] *)
(* 1 + custom_reduce [2;3] *)
(* 1 + (2 + custom_reduce [3]) *)
(* 1 + (2 + (3 + custom_reduce [])) *)
(* 1 + (2 + (3 + 0)) *)
(* 6 *)
let rec custom_reduce list =
  match list with
  | [] -> 0
  | head :: tail -> head + custom_reduce tail
;;


(* With tail recursion *)
(* [1;2;3] *)
(* 0 custom_reduce [1;2;3] *)
(* (1 + 0) custom_reduce [2;3] *)
(* (2 + 1) custom_reduce [3] *)
(* (3 + 3) custom_reduce [] *)
(* 6 *)
let custom_reduce_tail list =
  let rec aux acc list =
    match list with
    | [] -> acc
    | head :: tail -> aux (acc + head) tail
  in
  aux 0 list
;;