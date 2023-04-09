
-- list comprehension to remove all the lowercase letters
a = [x | x <- "Three Letter Acronym", elem x ['A'..'Z']]

acro :: String -> String
acro xs = [x | x <- xs, elem x ['A'..'Z']]

myString xs = [x | x <- xs, elem x "aeiou"]
-- only vowels survive

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

myTuple = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]
howMany = length myTuple

