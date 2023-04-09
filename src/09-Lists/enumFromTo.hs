
eftBool :: Bool -> Bool -> [Bool]
eftBool True _ = [True]
eftBool False True = [False, True]
eftBool False False = [False]

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y
  | x == y = [x]
  | x > y = []
  | x < y = x:y:[]

eftInt :: Int -> Int -> [Int]
eftInt x y
  | x == y = [x]
  | x > y = x : eftInt (x - 1) y -- descending works, [] also a possibility
  | x < y = x : eftInt (x + 1) y

eftChar :: Char -> Char -> [Char]
eftChar x y
  | x == y = [x]
  | x > y = x : eftChar (pred x) y -- descending works, [] also a possibility
  | x < y = x : eftChar (succ x) y

-- side note, this would be an implementation using range syntax from 1 to 5 (excluding 5)
-- also works with descending (does not default to ascending like [10..1] == [])
(.:.) :: (Ord a, Num a) => a -> a -> [a]
(.:.) a b
 | a == b = []
 | a > b = a : (a - 1) .:. b
 | a < b = a : (a + 1) .:. b

