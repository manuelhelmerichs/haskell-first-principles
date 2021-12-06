
-- how filter is implemented in Prelude
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' pred (x:xs)
  | pred x = x : filter pred xs
  | otherwise = filter pred xs

-- exercise
multipleOfThree = filter (\x -> x `mod` 3 == 0) [1..30]
multipleOfThree' = length (filter (\x -> x `mod` 3 == 0) [1..30])
multipleOfThree'' = length . filter (\x -> x `mod` 3 == 0) $ [1..30]
-- which really means
multipleOfThree''' = (length . filter (\x -> x `mod` 3 == 0)) [1..30]

-- filter works on Strings!! no need to map
myFilter :: String -> [String]
myFilter s = filter articles $ words s
  where articles :: String -> Bool
        articles x = x /= "the" && x /= "a" && x /= "an"

