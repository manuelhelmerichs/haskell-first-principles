
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- basic unit test!
e2 :: Bool
e2 = appedCatty "woohoo!" == "woops" ++ " mrow " ++ "woohoo!"

e3 :: Bool
e3 = frappe "1" == "1" ++ " mrow " ++ "haha"

e4 :: Bool
e4 = appedCatty (frappe "blue") == "woops" ++ " mrow " ++ "blue mrow haha"
-- frappe "blue" == "blue mrow haha"
-- "woops" ++ " mrow " ++ "blue mrow haha"


e5 :: Bool
e5 = cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue"))
      == "pink mrow haha" ++ " mrow " ++ " mrow " ++ "green" ++ "woops" ++ " mrow " ++ "blue"

e6 :: Bool
e6 = cattyConny (flippy "Pugs" "are") "awesome"
      == "are mrow Pugs" ++ " mrow " ++ "awesome"

recSum :: (Eq a, Num a) => a -> a
recSum 1 = 1 -- base case
recSum n = n + recSum (n - 1) 

-- recSum 5 = 5 + recSum (4)
-- recSum 4 = 4 + recSum (3)
-- recSum 3 = 3 + recSum (2)
-- recSum 2 = 2 + recSum (1)
-- recSum 1 = 1
-- recSum 2 = 3
-- recSum 3 = 6
-- recSum 4 = 10
-- recSum 5 = 15

-- but this doesn't work for negative numbers and zero!

recSum' :: (Ord a, Num a) => a -> a
recSum' 1 = 1 -- base case
recSum' n 
  | n > 0 = n + recSum (n - 1)
  | n == 0 = 0
  | n < 0 = error "Not defined for numbers less then zero"
                 

recMult :: (Integral a) => a -> a -> a
recMult x 1 = x
recMult 1 y = y
recMult x y = recMult x (y-1) + x

-- 10 * 5 = 10 * 4 + 10 = 10 * 3 + 10 + 10 = 10 * 2 + 10 + 10 + 10 [..]

