-- e.g.
-- 20 divided by 4 == 20 - 4, 16
--                       - 4, 12
--                       - 4, 8
--                       - 4, 4
--                       - 4, 0

type Numerator = Integer
type Denominator = Integer
type Quotient = (Integer, Integer)

dividedBy :: Numerator -> Denominator -> Quotient
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n) 
          | otherwise = go (n - d) d (count + 1)

