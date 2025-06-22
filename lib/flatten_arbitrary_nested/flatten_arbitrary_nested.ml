type 'a nested =
  | Elem of 'a
  | List of 'a nested list
;;


(* [[[1; 2]]; [[3]; [4; 5]]] *)
(* Concatenate ([[1; 2]] [[3]; [4; 5]]) [] *)
(* [[1; 2]; [3]; [4; 5]] *)
(* Concatenate ([1; 2] [[3]; [4; 5]]) [] *)
(* [1; 2; [3]; [4; 5]] *)
(* (1::[]) [2; [3]; [4; 5]] *)
(* (2::[1]) [[3]; [4; 5]] *)
(* [[3]; [4; 5]] [2; 1] *)
(* Concatenate ([3] [[4; 5]]) [2; 1] *)
(* [3; [4; 5]] *)
(* (3::[2; 1]) [[4; 5]] *)
(* Concatenate ([[4; 5]]) [3; 2; 1] *)
(* [4; 5] *)
(* (4::[3; 2; 1]) [5] *)
(* (5::[4; 3; 2; 1]) [] *)
(* [5; 4; 3; 2; 1] [] *)
(* [1; 2; 3; 4; 5] *)
let flatten_arbitrary_nested(n : 'a nested) : 'a list =
  let rec aux pending acc =
    match pending with
    | [] -> Reverse.reverse acc
    | Elem x :: rest -> aux rest (x :: acc)
    | List xs :: rest -> aux (Concatenate.concatenate_tail xs rest) acc
  in
  aux [n] []
;;
