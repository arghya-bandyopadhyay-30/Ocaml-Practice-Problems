let rec print_list list = 
  match list with
  | [] -> print_endline ""
  | head :: tail -> print_int head; print_string "; "; print_list tail;;
