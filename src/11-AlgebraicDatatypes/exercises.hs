import Data.Char

-- MC
-- 1
data Weekday =
    Monday
  | Tuesday
  | Wednesday
  | Thurday
  | Friday

-- 2
f :: Weekday -> String
f Friday = "Miller Time"
-- f Monday etc. as holes!

-- 4
g xs = xs !! (length xs - 1)


-- Ciphers
shiftRight :: Int -> Char -> Char
shiftRight a b
  | isUpper b = shiftRightUpper a b
  | isLower b = shiftRightLower a b

shiftRightLower :: Int -> Char -> Char
shiftRightLower a b = chr $ ((a + (ord b - ord 'a')) `mod` 26) + ord 'a'

shiftRightUpper :: Int -> Char -> Char
shiftRightUpper a b = chr $ ((a + (ord b - ord 'A')) `mod` 26) + ord 'A'

caesar :: Int -> String -> String
caesar _ [] = []
caesar n (x:xs) = shiftRight n x : caesar n xs

unCaesar :: Int -> String -> String
unCaesar _ [] = []
unCaesar n (x:xs) = shiftLeft n x : unCaesar n xs

shiftLeft a b
  | isUpper b = shiftLeftUpper a b
  | isLower b = shiftLeftLower a b

shiftLeftLower :: Int -> Char -> Char
shiftLeftLower = shiftRightLower . negate

shiftLeftUpper :: Int -> Char -> Char
shiftLeftUpper = shiftRightUpper . negate

-- how to approach this
-- start by writing function that repeats keyword to match word to decipher
-- change caesar, uncaesar to not use n but the ord of char in keyword
-- finished!

