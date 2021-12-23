-- trick to show how foldr/foldl evaluates:
xs = map show [1..5]
y = foldr (\x y -> concat ["(", x, "+", y, ")"]) "0" xs

z = foldl f "0" (map show [1..5])
  where f x y = concat ["(", x, "+", y, ")"]

-- f is the function, z the argument to f
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f z xs = 
  case xs of
    [] -> z
    (x:xs) -> f x (foldr f z xs)
-- foldr f z [] = z
-- foldr f z (x:xs) = f x (foldr f z xs)

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = foldr (\x b -> f x || b) False xs

thisIsTrue = myAny even [1..]
neverStop = myAny even (repeat 1) -- always an odd number
amazingThatThisWorks = length $ take 2 $ take 4 xs
  where xs = [1, 2] ++ undefined

thisWorks = foldr (\_ _ -> 9001) 0 xs
  where xs = [undefined, undefined]
-- because the cons cell only contains undefined, the spine is defined

-- thisDoesntWork = foldr (\_ _ -> 9001) 0 xs
--   where xs = undefined
-- because the first cons cell itself is undefined

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f acc [] = acc
myFoldl f acc (x:xs) = myFoldl f (f acc x) xs

-- use scanr and scanl to see how folds evaluate!
scanFoldr = foldr (+) 0 [1..5] == head (scanr (+) 0 [1..5])
scanFoldl = foldl (+) 0 [1..5] == last (scanl (+) 0 [1..5])

-- both folds arrive at the same result, but from different orders
-- they do however traverse the spine in the same direction:
-- (1 + 2) + 3 == 1 + (2 + 3)

-- summary
-- use foldr for infinite lists and when not needing to traverse the whole list
-- foldl is faster otherwise (when traversing whole list): tail recursive

-- but, be careful with substituting:
carful = foldr (^) 2 [1..3] == 1
carful' = foldl (^) 2 [1..3] == 64

careful2 = foldr (:) [] [1..3]
careful2' = foldl (flip (:)) [] [1..3]

-- foldr (flip const) 0 [1..5] will always return 0
-- foldr const 0 [1..5] will always return 1
-- foldl const 0 [1..5] will always return 0
-- foldl (flip const) 0 [1..5] will always return 5

