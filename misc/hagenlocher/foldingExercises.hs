rev :: [a] -> [a]
rev = foldl (flip (:)) []

rev' :: [a] -> [a]
rev' = foldl (\acc x -> x : acc) []

prefixes :: [a] -> [[a]]
prefixes = foldr (\x acc -> [x] : map (x :) acc) []

lagrange :: [(Float, Float)] -> Float -> Float
lagrange xs x = foldl (\acc (xj, y) -> acc + (y * l xj)) 0 xs -- L(x) = sum ..
  where
    l :: Float -> Float -- lj(x) := prod ..
    l xj = foldl (\acc (xk, _) -> if xj == xk then acc else acc * ((x - xk) / (xj - xk))) 1 xs

data Trie a = Leaf a | Node a [Trie a] -- prefix tree

-- cool car cat in a tree
t = Node 'c' [Node 'a' [Leaf 'r', Leaf 't'], Node 'o' [Node 'o' [Leaf 'l']]]

foldtrie :: (b -> a -> b) -> b -> Trie a -> b -- in preorder traversel
foldtrie f acc (Leaf x) = f acc x
foldtrie f acc (Node x xs) = foldl f' (f acc x) xs
  where
    --f' :: b -> Trie a -> b
    f' acc t = foldtrie f acc t
