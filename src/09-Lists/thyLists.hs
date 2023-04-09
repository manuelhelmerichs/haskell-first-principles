
mySqr :: [Int]
mySqr = [x^2 | x <- [1..10]]

a = [x | x <- mySqr, rem x 2 == 0]
-- all even numbers from mySqr

b = [(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
-- [(1, 64), (1, 81), (1, 100), (4, 64), (4, 81) and so on]

c = take 5 [(x,y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
-- the first 5 from previous list

