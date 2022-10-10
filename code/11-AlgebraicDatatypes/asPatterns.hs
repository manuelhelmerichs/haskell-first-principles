import Data.Char(toUpper)

f :: Show a => (a, b) -> IO (a,b)
f t@(a, _) = do
  print a
  return t

-- syntactic sugar for
f2 :: Show a => (a, b) -> IO (a,b)
f2 (a,b) = do
  print a
  return (a,b)

test = f(1,2)

doubleUp :: [a] -> [a]
doubleUp [] = []
doubleUp xs@(x:_) = x : xs

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] [] = True
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf xs@(x:xt) (y:yt)
  | x == y = isSubseqOf xt yt
  | otherwise = isSubseqOf xs yt

capitalizeWords :: String -> [(String, String)]
capitalizeWords a = map capitalize (words a)
  where capitalize xs@(x:xt) = (xs, toUpper x :xt)

capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (x:xs) = toUpper x : xs

splitOn :: Char -> String -> [String]
splitOn d = foldr f [[]]
  where f c xs@(x:xt)
          | c == d = [c]:xs
          | otherwise = (c:x):xt

capitalizeParagraph :: String -> String
capitalizeParagraph [] = []
capitalizeParagraph t = concat (map capitalizeWord (splitOn '.' t))

