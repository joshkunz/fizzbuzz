-- Language: Haskell
-- To Run: $ ghc fizzbuzz.hs && ./fizzbuzz

module Main (main) where

-- Return the given string if y is evenly divisible by x
pdivt :: (Integral a) => String -> a -> a -> String
pdivt t x y = if (mod y x == 0) then t else ""

-- Get the output line as a string for a number
fbs :: (Integral a, Show a) => a -> String
fbs x = (show x) ++ " " ++ (pdivt "Fizz" 3 x) ++ (pdivt "Buzz" 5 x)

-- Get the IO operation for a particular number
fb :: (Integral a, Show a) => a -> IO ()
fb x = putStrLn $ fbs x

-- Combine the IO operations
main = foldr (>>) (return ()) $ map fb [1..100]
