dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2

e2 = dodgy 1 1 == 11
e3 = dodgy 2 2 == 22
e4 = dodgy 1 2 == 21
e5 = dodgy 2 1 == 12
e6 = oneIsOne 1 == 11
e7 = oneIsOne 2 == 21
e8 = oneIsTwo 1 == 21
e9 = oneIsTwo 2 == 22
e10 = oneIsOne 3 == 31
e11 = oneIsTwo 3 == 23 
