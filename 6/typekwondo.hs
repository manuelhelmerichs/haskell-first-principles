
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk x y z = (==) (x y) z

arith :: Num b => (a -> b) -> Integer -> a -> b
arith x y z = (+) (x z) 10

