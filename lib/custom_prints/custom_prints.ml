let rec print_list list = 
  match list with
  | [] -> print_endline ""
  | head :: tail -> 
    print_int head; print_string "; "; 
    print_list tail
;;


let rec print_dict d = 
  match d with
  | [] -> ()
  | (key, value) :: rest ->
    Printf.printf "%s: %d\n" key value;
    print_dict rest;
;;