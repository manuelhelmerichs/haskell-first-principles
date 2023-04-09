-- for finite lists
foldr f z xs = foldl (flip f) z (reverse xs)

