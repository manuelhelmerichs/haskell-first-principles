module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n
  | n == 0 = "zero"
  | n == 1 = "one"
  | n == 2 = "two"
  | n == 3 = "three"
  | n == 4 = "four"
  | n == 5 = "five"
  | n == 6 = "six"
  | n == 7 = "seven"
  | n == 8 = "eight"
  | n == 9 = "nine"
  | otherwise = error "digitToWord only accepts 0 to 9 as input!"

digits :: Int -> [Int]
digits n
  | n < 10 = [n]
  | otherwise = digits (div' n) ++ [mod' n]
  where div' :: Int -> Int 
        div' x = div x 10
        mod' :: Int -> Int
        mod' x = mod x 10

-- test :: Int -> [String]
-- test n = map digitToWord (digits n)

wordNumber :: Int -> String
wordNumber n = concat (intersperse "-" (map digitToWord (digits n)))

