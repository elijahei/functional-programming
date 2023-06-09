

let rec within_three acc l =
  if acc <= 3 then
        match l with 
  	| _::t -> within_three (1+acc) t
    | [] -> "yes its within 3"
  else "OUT OF BOUNDS!!";;





let rec apply_func (func : int -> int) (l : int list) : int list =
  match l with 
  | [] -> []
  | h::t -> func h :: apply_func func t;;


  let f (a : int) : int = a*12;;
  


let li = apply_func f [1;2;3];;


let rec parallel_prefix (acc : int) (l : int list) : int list=
  match l with 
  | [] -> []
  | h::t -> acc+h :: parallel_prefix (acc+h) t;;




let lis = parallel_prefix 0 [1;2;3;4;5;6];;

open Printf
let () = List.iter (printf "%d ") lis;;