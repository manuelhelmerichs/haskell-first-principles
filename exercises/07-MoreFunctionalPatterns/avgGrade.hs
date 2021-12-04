
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9 = 'A'
  | y >= 0.7 = 'C' -- now B is skipped
  | y >= 0.8 = 'B'
  | y >= 0.59 = 'D'
  | y < 0.59 = 'F'
  where y = x / 100

avgGrade' :: (Fractional a, Ord a) => a -> Char
avgGrade' x
  | otherwise = 'F' -- now everything is 'F'
  | y >= 0.9 = 'A'
  | y >= 0.8 = 'B'
  | y >= 0.7 = 'C'
  | y >= 0.59 = 'D'
  where y = x / 100
-- if changed order, does not work the same:
-- if x >= 0.9, it's also greater than 0.9

