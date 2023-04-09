
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) =
  if x == False
    then False
  else myAnd xs

myAnd' :: [Bool] -> Bool
myAnd' [] = True
myAnd' (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = y == x || myElem y xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' _ [] = False
myElem' x y = myAny (x==) y

-- implementation with an acc
myReverse :: [a] -> [a]
myReverse xs = rev xs []
  where
    rev []     acc = acc
    rev (x:xs) acc = rev xs (x:acc) -- super clean!

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f xs = squish $ map f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "list is empty"
myMaximumBy _ (x:[]) = x
myMaximumBy f (x:xs) = if (f x $ myMaximumBy f xs) == GT then x else myMaximumBy f xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "list is empty"
myMinimumBy _ (x:[]) = x
myMinimumBy f (x:xs) = if (f x $ myMinimumBy f xs) == LT then x else myMinimumBy f xs

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

