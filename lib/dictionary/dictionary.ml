module Dictionary = struct
  type ('k, 'v) dict = ('k * 'v) list;;
  
  let empty : ('k, 'v) dict = []

  let remove (key : 'k) (d : ('k, 'v) dict) : ('k, 'v) dict =
    let rec aux acc list =
      match list with
      | [] -> Reverse.reverse acc
      | (k, _) :: rest when k = key -> aux acc rest
      | pair :: rest -> pair :: aux acc rest
    in
    aux [] d
  ;;

  let put (key: 'k) (value: 'v) (d: ('k, 'v) dict) : ('k, 'v) dict =
    (key, value) :: remove key d
  ;;

  let get (key: 'k) (d: ('k, 'v) dict) : 'v =
    let rec aux key d =
      match d with
      | [] -> failwith "Key not found"
      | (k, v) :: _ when k = key -> v
      | _ :: rest -> aux key rest
    in
    aux key d
  ;;
end