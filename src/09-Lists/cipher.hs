
module Cipher where

import Data.Char

caesar :: Int -> String -> String
caesar _ [] = []
caesar n (x:xs) = shiftRight n x : caesar n xs

unCaesar :: Int -> String -> String
unCaesar _ [] = []
unCaesar n (x:xs) = shiftLeft n x : unCaesar n xs

shiftRight :: Int -> Char -> Char
shiftRight a b
  | isUpper b = shiftRightUpper a b
  | isLower b = shiftRightLower a b
  | otherwise = b

shiftLeft :: Int -> Char -> Char
shiftLeft a b
  | isUpper b = shiftLeftUpper a b
  | isLower b = shiftLeftLower a b
  | otherwise = b

shiftRightLower :: Int -> Char -> Char
shiftRightLower a b = chr $ ((a + (ord b - ord 'a')) `mod` 26) + ord 'a'

shiftRightUpper :: Int -> Char -> Char
shiftRightUpper a b = chr $ ((a + (ord b - ord 'A')) `mod` 26) + ord 'A'

shiftLeftLower :: Int -> Char -> Char
shiftLeftLower a b = chr $ (((ord b - ord 'a') - a) `mod` 26) + ord 'a'

shiftLeftUpper :: Int -> Char -> Char
shiftLeftUpper a b = chr $ (((ord b - ord 'A') - a) `mod` 26) + ord 'A'

shiftLeftLower' :: Int -> Char -> Char
shiftLeftLower' = shiftRightLower . negate

shiftLeftUpper' :: Int -> Char -> Char
shiftLeftUpper' = shiftRightUpper . negate


