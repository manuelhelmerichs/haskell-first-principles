data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

insertValue :: Ord a => a -> BinaryTree a -> BinaryTree a
insertValue b Leaf = Node Leaf b Leaf
insertValue b (Node left a right)
  | b == a = Node left a right
  | b < a  = Node (insertValue b left) a right
  | b > a  = Node left a (insertValue b right)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree _ Leaf = Leaf
mapTree f (Node left a right) =  Node (mapTree f left) (f a) (mapTree f right)

testTree :: BinaryTree Integer
testTree = Node (Node Leaf 3 Leaf) 1 (Node Leaf 4 Leaf)

mapExpected = Node (Node Leaf 4 Leaf) 2 (Node Leaf 5 Leaf)

mapOkay = if mapTree (+1) testTree == mapExpected then print "yup okay!" else error "test failed!"


squish' :: [[a]] -> [a]
squish' = foldr (\x y -> x ++ y) []


preorder :: BinaryTree a -> [a]
preorder = undefined
-- preorder Leaf = []
-- preorder (Node left a right) = a : (squish' (preorder left)) : (squish' (preorder right)

inorder :: BinaryTree a -> [a]
inorder = undefined

postorder :: BinaryTree a -> [a]
postorder = undefined

testTree' :: BinaryTree Integer
testTree' = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)

testPreorder :: IO ()
testPreorder = if preorder testTree' == [2, 1, 3] then putStrLn "Preorder fine!" else putStrLn "Bad news bears."

testInorder :: IO ()
testInorder = if inorder testTree' == [1, 2, 3] then putStrLn "Inorder fine!" else putStrLn "Bad news bears."

testPostorder :: IO ()
testPostorder = if postorder testTree' == [1, 3, 2] then putStrLn "Postorder fine!" else putStrLn "postorder failed check"

main :: IO ()
main = do
  testPreorder
  testInorder
  testPostorder

t1 = insertValue 1 Leaf
t2 = insertValue 3 t1
-- data types are immutable! t2 is a new tree
t3 = insertValue 4 t2
t4 = insertValue 0 t3

