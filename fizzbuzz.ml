(* Language: OCaml
 * To Run:
 *     $ ocaml fizzbuzz.ml *)

module FizzBuzz : sig
    val over : int -> int -> unit
end = struct
    (* val divs : int -> int -> string -> string *)
    let div_s a b s = if a mod b == 0 then s else "";;
    let empty s = s = "";;

    let rec over from _to =
        let fizz = div_s from 3 "Fizz" in
        let buzz = div_s from 5 "Buzz"  in 
        if not ((empty fizz) && (empty buzz)) then 
            Printf.printf "%s%s\n" fizz buzz 
        else Printf.printf "%d\n" from;
        if from < _to then over (from + 1) _to;;
end;;

FizzBuzz.over 1 100
