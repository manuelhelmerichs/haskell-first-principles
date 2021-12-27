
-- A foldr pattern on a list basically replaces:
-- foldr f z [x1, x2, .., xn]
-- with:
-- f x1 (f x2 (.. (f xn z)))

-- this includes the solutions from last chapters standardFunctions.hs

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) =
  if x == False
    then False
  else myAnd xs

myAnd' :: [Bool] -> Bool
myAnd' [] = True
myAnd' (x:xs) = x && myAnd xs

myAnd'' :: [Bool] -> Bool
myAnd'' = foldr (\a b -> if a == False then False else b) True

myAnd''' :: [Bool] -> Bool
myAnd''' = foldr (&&) True



-- 1.
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myOr' :: [Bool] -> Bool
myOr' = foldr (||) False



-- 2.
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f x || myAny f xs

myAny' :: (a -> Bool) -> [a] -> Bool
myAny' f = foldr g False
  where g x = (||) (f x) -- has to be a binary function!



-- 3.
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = y == x || myElem y xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' _ [] = False
myElem' x y = myAny (x==) y

myElem'' :: Eq a => a -> [a] -> Bool
myElem'' x = foldr f False
  where f y z= (||) (x == y) z



-- 4.
-- implementation with an acc
myReverse :: [a] -> [a]
myReverse xs = rev xs []
  where rev :: [a] -> [a] -> [a]
        rev []     acc = acc
        rev (x:xs) acc = rev xs (x:acc) -- super clean!

myReverse' :: [a] -> [a]
myReverse' = foldl f [] -- has to be foldl
  where f x y = y : x


-- 5
myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldr g [] xs
  where g x y = f x : y

-- better solution, using function composition
myMap' :: (a -> b) -> [a] -> [b]
myMap' f = foldr ((:) . f) []



-- 6
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\a b -> if f a == True then a : b else b) []



-- 7
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squish' :: [[a]] -> [a]
squish' = foldr (\x y -> x ++ y) []



-- 8
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f xs = squish $ map f xs

squishMap' :: (a -> [b]) -> [a] -> [b]
squishMap' f = foldr (\x y -> (f x) ++ y) []



-- 9
squishAgain :: [[a]] -> [a]
squishAgain = squishMap' id



-- 10
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "list is empty"
myMaximumBy _ (x:[]) = x
myMaximumBy f (x:xs) = if (f x $ myMaximumBy f xs) == GT then x else myMaximumBy f xs

-- good enough for me, though it is not correct if helper always returns b
-- (then always returns minimum element)
myMaximumBy' :: Ord a => (a -> a -> Ordering) -> [a] -> a
myMaximumBy' f xs = foldr helper (minimum xs) xs
  where helper a b = if (f a b) == GT then a else b



-- 11
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "list is empty"
myMinimumBy _ (x:[]) = x
myMinimumBy f (x:xs) = if (f x $ myMinimumBy f xs) == LT then x else myMinimumBy f xs

myMinimumBy' :: Ord a => (a -> a -> Ordering) -> [a] -> a
myMinimumBy' f xs = foldr helper (minimum xs) xs
  where helper a b = if (f a b) == LT then a else b
