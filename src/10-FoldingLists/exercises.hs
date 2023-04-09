-- foldl (flip (*)) 1 [1..5]
-- ((1 flip (*) 1) flip (*) 2 ..
-- (2 * (1 * 1) ..

-- foldr f initial [] = initial
-- foldr f initial (x:xs) = f x (foldr f initial xs)

a = foldr (++) "WOOT" ["woot", "WOOT", "woot"]
b = foldr max [] ["fear is the little death"]
c = foldr (&&) True [False, True]
-- and False (and True (and True)) wouldnt work!
d = foldr (||) True [False, True]
-- always true, as initial is true
e = foldr ((++) . show) "" [1..5]
e' = foldl (flip ((++) . show)) "" [1..5] -- backwards
-- foldl doesn't work:
-- "" (++) . show 1 ..
f = foldr const 1 [1..3]
-- const 1 (const 2 .. (const 5 'a'))
-- notice how const is used twice, each with different type signatures
-- const 3 'a' means const is instantiated to Int -> Char -> Int
-- const 2 3 means const is instantiated to Int -> Int -> Int
-- foldr will use the function at the same type every time!
g = foldr const '0' "tacos"
-- same think as above!
h = foldl (flip const) '0' "burritos"
-- same thing, really
i = foldl (flip const) 9 [1..5]

