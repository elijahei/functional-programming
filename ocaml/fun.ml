

let rec within_three acc l =
  if acc <= 3 then
        match l with 
  	| _::t -> within_three (1+acc) t
    | [] -> "yes its within 3"
  else "OUT OF BOUNDS!!";;


print_string (within_three 0 [1;2;3;4;5;6]);