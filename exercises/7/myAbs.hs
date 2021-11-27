myAbs :: Integer -> Integer
myAbs x = if x < 0 then (-x) else x

-- with guard syntax
myAbs' :: Integer -> Integer
myAbs' x
  | -5 < x && x < 5 = (-x)
  | x <= -5 = (x * x)
  | x >= 5 = (x * x)
  | otherwise = x

bloodMa :: Integer -> String
bloodMa x
  | x < 135 = "too low"
  | x > 145 = "too high"
  | otherwise = "just right."


