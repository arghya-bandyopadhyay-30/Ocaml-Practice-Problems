type btree =
  | Empty
  | Node of int * btree * btree
;;

(* tree = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty)) *)
(* sum_btree(tree) = 1 + sum_btree(Node(2, Empty, Empty)) + sum_btree(Node(3, Empty, Empty)) *)
(* sum_btree(Node(2, Empty, Empty)) = 2 *)
(* sum_btree(Node(3, Empty, Empty)) = 3 *)
(* sum_btree(tree) = 1 + 2 + 3 = 6 *)
let rec sum_btree b =
  match b with
  | Empty -> 0
  | Node (v, l, r) -> v + sum_btree l + sum_btree r
;;


(* tree = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty)) *)
(* multiply_by_n(tree, 5) = Node(1 * 5, multiply_by_n(Node(2, Empty, Empty), 5), multiply_by_n(Node(3, Empty, Empty), 5)) *)
(* multiply_by_n(Node(2, Empty, Empty), 5) = Node(2 * 5, Empty, Empty) *)
(* multiply_by_n(Node(3, Empty, Empty), 5) = Node(3 * 5, Empty, Empty) *)
(* multiply_by_n(tree, 5) = Node(5, Node(10, Empty, Empty), Node(15, Empty, Empty)) *)
let rec multiply_by_n b n =
  match b with
  | Empty -> Empty
  | Node (v, l, r) -> Node(v * n, multiply_by_n l n, multiply_by_n r n)
;;


(* tree = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty)) *)
(* tree_height(tree) = 1 + max(tree_height(Node(2, Empty, Empty)), tree_height(Node(3, Empty, Empty))) *)
(* tree_height(Node(2, Empty, Empty)) = 1 + tree_height(Empty) = 1 + 0 = 1 *)
(* tree_height(Node(3, Empty, Empty)) = 1 + tree_height(Empty) = 1 + 0 = 1 *)
(* tree_height(tree) = 1 + max(1, 1) = 2 *)
let max a b = if a > b then a else b;;

let rec height_tree b =
  match b with
  | Empty -> 0
  | Node (_, l, r) -> 1 + max (height_tree l) (height_tree r)
;;

(* Height = -1, 0, 1 *)
let abs x = if x < 0 then -x else x;;

let rec is_balanced_tree b =
  match b with
  | Empty -> true
  | Node (_, l, r) ->
      let height_l = height_tree l in
      let height_r = height_tree r in
      abs(height_l - height_r) <= 1 
      && is_balanced_tree l 
      && is_balanced_tree r
;;
