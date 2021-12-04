
module TupleFunctions where

-- naive implementation
f :: (a,b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- using pattern matching
f' :: (a,b) -> (c, d) -> ((b,d), (a,c))
f' (a,b) (c,d) = ((b, d), (a,c))

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

addEmUp2' :: Num a => (a, a) -> a
addEmUp2' tup = (fst tup) + (snd tup)

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

third3 :: (a, b, c) -> c
third3 (_, _, z) = z 


