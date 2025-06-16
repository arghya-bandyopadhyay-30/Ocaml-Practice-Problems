(* list = [1; 2; 2; 3] *)
(* reverse = [3; 2; 2; 1] *)
let is_palindrome list =
  list = Reverse.reverse list;;


let is_palindrome_tail list =
  let rec aux actual reversed =
    match (actual, reversed) with
    | ([], []) -> true
    | ([], _) | (_, []) -> false
    | (left_head :: left_tail), (right_head :: right_tail) -> 
        if left_head = right_head then aux left_tail right_tail
        else false
  in
  aux list (Reverse.reverse list)
;;