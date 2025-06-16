(* concatenate [1; 2; 3] [4; 5; 6] *)
(* 1 :: concatenate [2; 3] [4; 5; 6] *)
(* 1 :: (2 :: concatenate [3] [4; 5; 6]) *)
(* 1 :: (2 :: (3 :: concatenate [] [4; 5; 6])) *)
(* 1 :: (2 :: (3 :: [4; 5; 6])) *)
(* [1; 2; 3; 4; 5; 6] *)

let rec concatenate list1 list2 = 
  match list1 with
  | [] -> list2
  | head :: tail -> head :: concatenate tail list2
;;

(* concatenate [1; 2; 3] [4; 5; 6] *)
(* reverse [1; 2; 3] = [3; 2; 1] *)
(* aux (3 :: [4; 5; 6]) [2; 1] *)
(* aux (2 :: [3; 4; 5; 6]) [1] *)
(* aux (1 :: [2; 3; 4; 5; 6]) [] *)
(* aux = [1; 2; 3; 4; 5; 6] *)

let concatenate_tail list1 list2 =
  let rec aux acc list1 =
    match list1 with
    | [] -> acc
    | head :: tail -> aux (head :: acc) tail
  in
  aux list2 (Reverse.reverse list1)
;;