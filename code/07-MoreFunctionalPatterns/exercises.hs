
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = fst $ divMod x 10

tensDigit'' :: Integral a => a -> a
tensDigit'' = fst . f
  where f y = divMod y 10

hundredsDigit :: Integral a => a -> a
hundredsDigit = fst . f
  where f y = divMod y 100


foldBool :: a -> a -> Bool -> a
foldBool = error "Error need to implement foldBool!"

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y z
  | z == False = x
  | z == True = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z =
  case z of
    True -> y
    False -> x

foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)

-- read :: Read a => String -> a
-- show :: Show a => -> a -> String
