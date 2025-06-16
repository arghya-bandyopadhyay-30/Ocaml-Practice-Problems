(* Question 1: Concatenate Two Lists *)
let a = [1; 2; 3];;
let b = [4; 5; 6];;

let result = Concatenate.concatenate a b;;
let result_tail = Concatenate.concatenate_tail a b;;

print_endline "Concatenated List (Without Tail Recursion):";;
let () = Print_list.print_list result;;

print_endline "Concatenated List (With Tail Recursion):";;
let () = Print_list.print_list result_tail;;


(* Question 2: Reverse a list *)
let c = [1; 2; 3; 4; 5];;

let reversed = Reverse.reverse c;;

print_endline "Reversed List:";;
let () = Print_list.print_list reversed;;


(* Question 3: Check Palindrome *)
let d = [1; 2; 3; 2; 1];;

let is_palindrome = Is_palindrome.is_palindrome d;;
let is_palindrome_tail = Is_palindrome.is_palindrome_tail d;;

print_endline "Is Palindrome (Without Tail Recursion):";;
let () = print_endline (string_of_bool is_palindrome);;

print_endline "Is Palindrome (With Tail Recursion):";;
let () = print_endline (string_of_bool is_palindrome_tail);;


(* Question 4: Implement Map from scratch *)
(* Question 5: Double the elements in the list *)
let e = [1; 2; 3];;
let double x = x * 2;;

let mapped = Custom_map.custom_map double e;;
let mapped_tail = Custom_map.custom_map_tail double e;;

print_endline "Mapped List using Custom Map (Without Tail Recursion):";;
let () = Print_list.print_list mapped;;

print_endline "Mapped List using Custom Map (With Tail Recursion):";;
let () = Print_list.print_list mapped_tail;;


(* Question 6: Implement Reduce from scratch *)
(* Question 7: Sum the elements in the list *)
let f = [1; 2; 3];;

let sum = Custom_reduce.custom_reduce f;;
let sum_tail = Custom_reduce.custom_reduce_tail f;;

print_endline "Sum of elements using Custom Reduce (Without Tail Recursion):";;
let () = print_int sum;;
print_newline ();;

print_endline "Sum of elements using Custom Reduce (With Tail Recursion):";;
let () = print_int sum_tail;;
print_newline ();;


(* Question 8: Maximum number in a list *)
let g = [-1; -3; -2; -4; -2; 0];;

let max_number = Maximum_number.maximum_number min_int g;;
let max_number_tail = Maximum_number.maximum_number_tail g;;

print_endline "Maximum Number (Without Tail Recursion):";;
let () = print_int max_number;;
print_newline ();;

print_endline "Maximum Number (With Tail Recursion):";;
let () = print_int max_number_tail;;
print_newline ();;


(* Question 9: Flatten a single nested list *)
let h = [[1; 2]; [3; 4]; [5; 6]];;

let flattened = Flatten_single_nested.flatten_single_nested h;;
let flattened_tail = Flatten_single_nested.flatten_single_nested_tail h;;

print_endline "Flattened Single Nested List:";;
let () = Print_list.print_list flattened;;

print_endline "Flattened Single Nested List (With Tail Recursion):";;
let () = Print_list.print_list flattened_tail;;


(* Question 10: Flatten a multi-nested list *)
(* let i = [[[1; 2]]; [[3]; [4; 5]]; [[6]]];; *)

