
# dollars
`($) :: (a -> b) -> a -> b`
is just `apply f x = f x`

Thus, `f xs = map (\x -> x + 1) $ filter (\x -> x>1) xs` means map after filter [..] is applied

## ignore an argument with `const`
`length = foldr (\x -> (+) 1) 0` is the same as `length = foldr (const $ (+) 1) 0`

