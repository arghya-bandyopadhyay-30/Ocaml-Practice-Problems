(* [1; 2] and [a; b] *)
(* (1: a) :: [] *)
(* (2: b) :: [(1: a)] *)
(* reverse [(2: b), (1: a)] *)
(* Result: [(1: a); (2: b)] *)

let zip list1 list2 =
  let rec aux acc l1 l2 =
    match l1, l2 with
    | [], [] -> Reverse.reverse acc
    | h1 :: t1, h2 :: t2 -> aux ((h1, h2) :: acc) t1 t2
    | _ -> failwith "Lists must be of the same length"
  in
  aux [] list1 list2
;;

let unzip zipped_list =
  let rec aux acc1 acc2 list =
    match list with
    | [] -> (Reverse.reverse acc1, Reverse.reverse acc2)
    | (h1, h2) :: tail -> aux (h1 :: acc1) (h2 :: acc2) tail
  in
  aux [] [] zipped_list
;;