elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x : xs) = if a == x then True else elem' a xs

elem'' :: (Eq a) => a -> [a] -> Bool
elem'' _ [] = False
elem'' e (x : xs) = (e == x) || elem'' e xs

nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (x : xs) = if elem' x xs then nub' xs else x : nub' xs

nub'' :: (Eq a) => [a] -> [a]
nub'' [] = []
nub'' (x : xs)
  | x `elem''` xs = nub'' xs
  | otherwise = x : nub'' xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True -- this is needed because else one element list is not covered
isAsc (x : y : xs) = (x <= y) && isAsc (y : xs) -- list with at least two elements

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] a b = a == b
hasPath xs a b
  | a == b = True
  | otherwise = let xs' = [(n, m) | (n, m) <- xs, n /= a] in or [hasPath xs' m b | (n, m) <- xs, n == a]
