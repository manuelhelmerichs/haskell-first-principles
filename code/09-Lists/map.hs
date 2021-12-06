import Data.Bool

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

blueprint :: (Eq b, Num b, Enum b) => [b]
blueprint = map (\x -> if x == 3 then (-x) else (x)) [1..10]
-- [1,2,-3,4,5,6,7,8,9,10]

ifThenElse :: (t -> a) -> (t -> a) -> (t -> Bool) -> [t] -> [a]
ifThenElse _ _ _ [] = []
ifThenElse f g b (x:xs) = bool (f x) (g x) (b x) : ifThenElse f g b xs

blueprint' = ifThenElse id negate (\x -> x == 3) [1..10]

