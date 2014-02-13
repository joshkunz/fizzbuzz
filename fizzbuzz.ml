(* Language: OCaml
 * To Run: $ ocaml fizzbuzz.ml *)

let divides a b = 
    (a mod b) == 0;;

let div_string a b str = 
    if (divides a b) then str else "";;

let rec fizzbuzz from to_ = 
    if (from <= to_) then
        (print_string @@ (string_of_int from) ^ " " ^
                         (div_string from 3 "Fizz") ^
                         (div_string from 5 "Buzz") ^ "\n";
        fizzbuzz (succ from) to_)
;;

fizzbuzz 1 100;;
