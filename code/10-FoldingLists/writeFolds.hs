-- function to take the first three letters of a string and concatenate the result:
usingMap = concat . map (take 3) -- equals right fold
usingMap' = concat . map (take 3) . reverse -- equals left fold

usingFoldr :: [String] -> String -- this implementation needs a type signature
usingFoldr = foldr (\x -> \y -> take 3 x ++ y) ""

usingFoldl :: [String] -> String -- this implementation needs a type signature
usingFoldl = foldl (\y x -> take 3 x ++ y) "" -- notice how x y are reversed

