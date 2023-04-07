

let rec within_three acc l =
  if acc <= 3 then
        match l with 
  	| _::t -> within_three (1+acc) t
    | [] -> "yes its within 3"
  else "OUT OF BOUNDS!!";;





let rec apply_func func l =
  match l with 
  | [] -> []
  | h::t -> func h :: apply_func func t;;


  let f a = a*12;;
  


let li = apply_func f [1;2;3];;

print_string (String.concat " " (List.map string_of_int li))

