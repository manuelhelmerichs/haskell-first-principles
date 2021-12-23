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
f = foldr const 'a' [1..3]
-- const 1 (const 2 .. (const 5 'a'))

