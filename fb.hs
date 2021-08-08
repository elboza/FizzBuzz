import Control.Monad

(|>):: a -> (a -> b) -> b
(|>) x f = f x

fizzLogic :: Integer -> String
fizzLogic i
    | i `mod` 3 == 0 && i `mod` 5 == 0 = "FizzBuzz"
    | i `mod` 3 == 0                   = "Fizz"
    | i `mod` 5 == 0                   = "Buzz"
    | otherwise                        = show i

fizzbuzz::Integer -> IO()
fizzbuzz n =
  [1..n]
  |> map (\x-> fizzLogic x) 
  |> forM_ $ print

main::IO()
main =
  fizzbuzz 15