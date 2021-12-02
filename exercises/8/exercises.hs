
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

