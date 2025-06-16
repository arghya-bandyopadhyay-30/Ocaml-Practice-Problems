(* reverse [1; 2; 3] *)
(* aux (1 :: []) [2; 3]*)
(* aux (2 :: [1]) [3]*)
(* aux (3 :: [2; 1]) []*)
(* aux = [3; 2; 1] *)

let reverse list =
  let rec aux acc list =
    match list with
    | [] -> acc
    | head :: tail -> aux (head :: acc) tail
  in
  aux [] list
;;