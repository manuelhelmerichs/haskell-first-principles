--foldl :: (a -> b -> a) a -> [b] -> a
myScanl :: (a -> b -> a) -> a -> [b] -> [a]
myScanl f q ls =
  q : (case ls of -- cool, case of in parenthesis
         [] -> []
         x:xs -> myScanl f (f q x) xs)

-- implementation of fibonacci using scanl
fibs :: [Int]
fibs = 1 : myScanl (+) 1 fibs -- returns an infinite list

-- returns nth fib number
fibsN :: Int -> Int
fibsN x = fibs !! x

-- first 20 fibonacci numbers
fibs20 :: [Int]
fibs20 = take 20 (fibs)

-- all fibonacci numbers that are less than 100
fibs100 :: [Int]
fibs100 = takeWhile (\x -> x < 100) fibs


-- implementation of factorials using scanl

-- known correct implementation from chapter on recursion:
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- factorial using scanl
scanlFac :: [Int]
scanlFac = myScanl (*) 1 [1..]

-- little unit test; returns False when no errors found!
testFactorials x = any (\x -> x == False) (boolFacts x)
  where 
        boolFacts :: Int -> [Bool]
        boolFacts 0 = []
        boolFacts x = (testFac x == factorial x) : boolFacts (x - 1)

        testFac :: Int -> Int
        testFac x = scanlFac !! x

