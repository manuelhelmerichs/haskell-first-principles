-- again, it's all partial function application.
data ThereYet = There Float Int Bool deriving (Eq, Show)

nope :: Float -> Int -> Bool -> ThereYet
nope = There

notYet :: Int -> Bool -> ThereYet
notYet = nope 25.5

notQuite :: Bool -> ThereYet
notQuite = notYet 10

yuss :: ThereYet
yuss = notQuite False

-- Percolate values through your programs, not bottoms.

