
mySpace :: Char -> Bool
mySpace ' ' = True
mySpace _ = False

-- using guards & a where block!
myWords :: String -> [String]
myWords s
  | s' == "" = []
  | otherwise = word : myWords rest
  where 
    s' = dropWhile mySpace s
    (word, rest) = break mySpace s'

-- more concise, using if else
myWords' :: String -> [String]
myWords' s = if s' == "" then [] else word : myWords' rest
  where 
    s' = dropWhile mySpace s
    (word, rest) = break mySpace s'

-- there might be a nice solution with takeWhile and dropWhile 
-- in combination, can't seem to find it though

