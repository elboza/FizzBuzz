open Printf

let fizzbuzz n =
  List.init 5 (fun x -> x + 1)|>List.map (fun x->
    match x mod 3=0,x mod 5=0 with
    |(true, true) -> "FizzBuzz"
    |(true, false) -> "Fizz"
    |(false, true) -> "Buzz"
    | _ -> string_of_int x
  ) |> List.iter (printf "%s")

fizzbuzz 15