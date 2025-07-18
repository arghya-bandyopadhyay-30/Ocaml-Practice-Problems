type symbolic_expr =
  | Const of int
  | Var of string
  | Add of symbolic_expr * symbolic_expr
  | Sub of symbolic_expr * symbolic_expr
  | Mul of symbolic_expr * symbolic_expr
  | Div of symbolic_expr * symbolic_expr
  | Let of symbolic_expr * symbolic_expr * symbolic_expr
;;


let rec substitute var_name value expr =
  match expr with
  | Const _ -> expr
  | Var name -> if name = var_name then value else expr
  | Add (e1, e2) -> Add (substitute var_name value e1, substitute var_name value e2)
  | Sub (e1, e2) -> Sub (substitute var_name value e1, substitute var_name value e2)
  | Mul (e1, e2) -> Mul (substitute var_name value e1, substitute var_name value e2)
  | Div (e1, e2) -> Div (substitute var_name value e1, substitute var_name value e2)
  | Let _ -> expr
;;

(* (1+2)X3 = mul(add(1, 2), 3) *)
(* simplify(mul(add(1, 2), 3)) = simplify(add(1,2)) * simplify(3) = (simplify(1) + simplify(2)) * simplify(3) = const(9) *)
let simplify_expr (expr: symbolic_expr) =
  let rec aux expr =
    match expr with
    | Const _ -> expr
    | Var _ -> expr
    | Add (e1, e2) ->
      let s1 = aux e1 in
      let s2 = aux e2 in
      (match (s1, s2) with
       | (Const n1, Const n2) -> Const (n1 + n2)
       | _ -> Add (s1, s2))
    | Sub (e1, e2) ->
      let s1 = aux e1 in
      let s2 = aux e2 in
      (match (s1, s2) with
      | (Const n1, Const n2) -> Const (n1 - n2)
      | _ -> Sub (s1, s2))
    | Mul (e1, e2) ->
      let s1 = aux e1 in
      let s2 = aux e2 in
      (match (s1, s2) with
       | (Const n1, Const n2) -> Const (n1 * n2)
       | _ -> Mul (s1, s2))
    | Div (e1, e2) ->
      let s1 = aux e1 in
      let s2 = aux e2 in
      (match (s1, s2) with
       | (Const n1, Const n2) -> Const (n1 / n2)
       | _ -> Div (s1, s2))
    | Let (Var var_name, value, exp) ->
      let simplified_value = aux value in
      let replaced_value = substitute var_name simplified_value exp in
      aux replaced_value
    | Let _ -> expr
  in
  aux expr
;;