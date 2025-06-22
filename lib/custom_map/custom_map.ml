(* Without tail recursion *)
(* func(x -> x*2) [1;2;3] *)
(* 1*2 :: func(x -> x*2) [2;3] *)
(* 1*2 :: (2*2 :: func(x -> x*2) [3]) *)
(* 1*2 :: (2*2 :: (3*2 :: func(x -> x*2) [])) *)
(* [2;4;6] *)
let rec custom_map func list =
  match list with
  | [] -> []
  | head :: tail -> func head :: custom_map func tail
;;

(* With tail recursion *)
(* func(x -> x*2) [1;2;3] *)
(* (func 1 :: []) [2;3]*)
(* (func 2 :: [2]) [3]*)
(* (func 3 :: [4;2]) []*)
(* [2;4;6] *)
let custom_map_tail func list =
  let rec aux acc list = 
    match list with
    | [] -> Reverse.reverse acc
    | head :: tail -> aux (func head :: acc) tail
  in
  aux [] list
;;
