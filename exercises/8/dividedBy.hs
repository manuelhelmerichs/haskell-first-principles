-- e.g.
-- 20 divided by 4 == 20 - 4, 16
--                       - 4, 12
--                       - 4, 8
--                       - 4, 4
--                       - 4, 0

-- 15 divided by 2 == 15 - 2, 13
--                    13 - 2, 11
--                    11 - 2, 9
--                     9 - 2, 7
--                     7 - 2, 5
--                     5 - 2, 3
--                     3 - 2, 1
-- count : 7

type Numerator = Integer
type Denominator = Integer
type Quotient = (Integer, Integer)

dividedBy :: Numerator -> Denominator -> Quotient
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n) 
          | otherwise = go (n - d) d (count + 1)

dividedBy' :: Int -> Int -> Maybe Int
dividedBy' num denom
   | denom == 0 = Nothing
   | num < 0 && denom > 0 = go' (negate num) denom 0
   | num > 0 && denom < 0 = go' num (negate denom) 0
   | num < 0 && denom < 0 = go (negate num) (negate denom) 0
   | num > 0 && denom > 0 = go num denom 0
  where go n d count
          | n < d = Just count
          | otherwise = go (n - d) d (count + 1)
        go' n d count
          | n < d = Just (negate count)
          | otherwise = go' (n - d) d (count + 1)


