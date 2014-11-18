-- Language: Haskell
-- To Run: $ ghc fizzbuzz.hs && ./fizzbuzz

module Main (main) where

divs :: (Integral a) => a -> a -> Bool
divs x y = (mod x y) == 0

-- Get the output line as a string for a number
fbs :: (Integral a, Show a) => a -> String
fbs x | (divs x 3) && (divs x 5) = "FizzBuzz"
fbs x | (divs x 3) = "Fizz"
fbs x | (divs x 5) = "Buzz"
fbs x = show x

-- Get the IO operation for a particular number
fb :: (Integral a, Show a) => a -> IO ()
fb x = putStrLn $ fbs x

-- Combine the IO operations
main = foldr (>>) (return ()) $ map fb [1..100]
