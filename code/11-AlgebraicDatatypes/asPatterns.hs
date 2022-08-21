f :: Show a => (a, b) -> IO (a,b)
f t@(a, _) = do
  print a
  return t

test = f(1,2)

doubleUp :: [a] -> [a]
doubleUp [] = []
doubleUp xs@(x:_) = x : xs

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] [] = True
isSubseqOf [] _ = True
isSubseqOf _ [] = False
--isSubseqOf xs@(x:_) (y:ys) = x

