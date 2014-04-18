(* Language: OCaml
 * To Run:
 *     $ ocaml fizzbuzz.ml *)

module FizzBuzz : sig
    val over : int -> int -> unit
end = struct
    (* val divs : int -> int -> string -> string *)
    let divs a b s = if a mod b == 0 then s else "";;

    let rec over from _to =
        Printf.printf "%d %s%s\n" from
            (divs from 3 "Fizz")
            (divs from 5 "Buzz");
        if from < _to then over (from + 1) _to;;
end;;

FizzBuzz.over 1 100
