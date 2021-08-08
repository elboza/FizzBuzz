let fizzbuzz n =
  [1..n]|>List.map (fun x->
    match x%3=0,x%5=0 with
    |(true, true) -> "FizzBuzz"
    |(true, false) -> "Fizz"
    |(false, true) -> "Buzz"
    | _ -> sprintf "%d" x
  ) |> List.iter (printfn "%A")

fizzbuzz 15