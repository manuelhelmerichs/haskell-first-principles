-- that was easy
module McCarthy91 where

mc91 n
  | n > 100 = n - 10
  | otherwise = mc91(mc91(n + 11))

