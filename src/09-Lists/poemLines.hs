module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
           \ symmetry?"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

-- naive solution, not using dropWhile
myLines :: String -> [String]
myLines "" = []
myLines s = (beforeNewLine s) : myLines (afterNewLine s)

-- function that outputs everything before \n, using pattern matching
beforeNewLine :: String -> String
beforeNewLine "" = []
beforeNewLine ('\n':xs) = [] -- pattern matching with x must be Char (single element!)
beforeNewLine (x:xs) = x : beforeNewLine xs

-- function that outputs everything after \n, using pattern matching
afterNewLine :: String -> String
afterNewLine "" = []
afterNewLine ('\n':xs) = xs
afterNewLine (x:xs) = afterNewLine xs


-- generic function for both myWords and myLines (copied from gvolpe's Github)
splitOn :: Char -> String -> [String]
splitOn c [] = []
splitOn c xs  = (takeWhile (/=c) xs) : splitOn c (drop 1 $ dropWhile (/=c) xs)
-- such a nice solution, really elegant!

myLines' :: String -> [String]
myLines' s = splitOn '\n' s

myWords :: String -> [String]
myWords s = splitOn ' ' s

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = print $ "Are they equal? "
        ++ show (myLines' sentences == shouldEqual)

