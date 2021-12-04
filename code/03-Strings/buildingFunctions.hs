
module Reverse where -- module has to be declared on top of the file!

addExc :: String -> String
addExc string = string ++ "!"

fourthLetter :: String -> Char
fourthLetter word = word !! 4

dropTwoWords :: String -> String
dropTwoWords string = unwords (drop 2 $ words string)

thirdLetter :: String -> Char
thirdLetter x = x !! 3

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

-- overengineered but kinda proud of it!!
reverseWords :: String -> String
reverseWords = unwords . rvrs . words
    where rvrs :: [String] -> [String]
          rvrs [] = []
          rvrs (x:xs) = rvrs xs ++ [x]

main :: IO ()
main = print $ reverseWords "Curry is awesome"

