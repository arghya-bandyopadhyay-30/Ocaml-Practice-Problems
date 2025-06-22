(* Question 1: Concatenate Two Lists *)
let a = [1; 2; 3];;
let b = [4; 5; 6];;

let () =
 let result = Concatenate.concatenate a b in
 print_endline "Concatenated List (Without Tail Recursion):";
 Print_list.print_list result
;;

let () = 
 let result_tail = Concatenate.concatenate_tail a b in
 print_endline "Concatenated List (With Tail Recursion):";
 Print_list.print_list result_tail
;;


(* Question 2: Reverse a list *)
let c = [1; 2; 3; 4; 5];;

let () = 
 let reversed = Reverse.reverse c in
 print_endline "Reversed List:";
 Print_list.print_list reversed
;;


(* Question 3: Check Palindrome *)
let d = [1; 2; 3; 2; 1];;

let () = 
 let is_palindrome = Is_palindrome.is_palindrome d in
 print_endline "Is Palindrome (Without Tail Recursion):";
 print_endline (string_of_bool is_palindrome)
;;

let () = 
 let is_palindrome_tail = Is_palindrome.is_palindrome_tail d in
 print_endline "Is Palindrome (With Tail Recursion):";
 print_endline (string_of_bool is_palindrome_tail)
;;


(* Question 4: Implement Map from scratch *)
(* Question 5: Double the elements in the list *)
let e = [1; 2; 3];;
let double x = x * 2;;

let () = 
 let mapped = Custom_map.custom_map double e in
 print_endline "Mapped List using Custom Map (Without Tail Recursion):";
 Print_list.print_list mapped;;

let () =
 let mapped_tail = Custom_map.custom_map_tail double e in
 print_endline "Mapped List using Custom Map (With Tail Recursion):";
 Print_list.print_list mapped_tail
;;


(* Question 6: Implement Reduce from scratch *)
(* Question 7: Sum the elements in the list *)
let f = [1; 2; 3];;

let () = 
 let sum = Custom_reduce.custom_reduce f in
 print_endline "Sum of elements using Custom Reduce (Without Tail Recursion):";
 print_int sum;
 print_newline ()
;;

let () = 
 let sum_tail = Custom_reduce.custom_reduce_tail f in
 print_endline "Sum of elements using Custom Reduce (With Tail Recursion):";
 print_int sum_tail;;
 print_newline ()
;;


(* Question 8: Maximum number in a list *)
let g = [-1; -3; -2; -4; -2; 0];;

let () = 
 let max_number = Maximum_number.maximum_number min_int g in
 print_endline "Maximum Number (Without Tail Recursion):";
 print_int max_number;
 print_newline ()
;;

let () = 
 let max_number_tail = Maximum_number.maximum_number_tail g in
 print_endline "Maximum Number (With Tail Recursion):";
 print_int max_number_tail;
 print_newline ()
;;


(* Question 9: Flatten a single nested list *)
let h = [[1; 2]; [3; 4]; [5; 6]];;

let () = 
 let flattened = Flatten_single_nested.flatten_single_nested h in
 print_endline "Flattened Single Nested List:";
 Print_list.print_list flattened;;

let () = 
 let flattened_tail = Flatten_single_nested.flatten_single_nested_tail h in
 print_endline "Flattened Single Nested List (With Tail Recursion):";
 Print_list.print_list flattened_tail;;


(* Question 10: Flatten a multi-nested list *)
let i = Flatten_arbitrary_nested.List[
  Flatten_arbitrary_nested.List[
    Flatten_arbitrary_nested.List[
      Flatten_arbitrary_nested.Elem (-1); 
      Flatten_arbitrary_nested.Elem (-2)
    ]
  ]; 
  Flatten_arbitrary_nested.List[
    Flatten_arbitrary_nested.List[
      Flatten_arbitrary_nested.Elem (-3)
    ];
    Flatten_arbitrary_nested.List[
      Flatten_arbitrary_nested.Elem (-4); 
      Flatten_arbitrary_nested.Elem (-5)
    ]
  ];
  Flatten_arbitrary_nested.List[
    Flatten_arbitrary_nested.List[
      Flatten_arbitrary_nested.Elem (-6)
    ]
  ]
];;


let () =
  let flat = Flatten_arbitrary_nested.flatten_arbitrary_nested i in
  print_endline "Flattened Arbitrary Nested List:";
  Print_list.print_list flat
;;
