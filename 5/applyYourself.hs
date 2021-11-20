
-- 1
-- (++) :: [a] -> [a] -> [a]
myConcat :: [Char] -> [Char]
myConcat x = x ++ "yo"

-- 2
-- (*) :: Num a => a -> a -> a
myMult :: Fractional a => a -> a
myMult x = (x / 3) * 5

-- 3
-- take :: Int -> [a] -> [a]
myTake :: Int -> [Char]
myTake x = take x "hey you"

-- 4
-- (>) :: Ord a => a -> a -> Bool
myCom :: Int -> Bool
myCom x = x > (length [1..10])

-- 5
-- (<) :: Ord a => a -> a -> Bool
myAlph :: Char -> Bool
myAlph x = x < 'z'

