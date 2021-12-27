-- 1.
-- warm up & review
stops = "pbtdkg"
vowels = "aeiou"

-- a) function that returns all possible s v s combinations as triples
-- solution via list comprehension
s vsTriple = [(x, y, z) | x <- stops, y <- vowels, z <- stops]
-- b)
pvsTriple = [(x, y, z) | x <- "p", y <- vowels, z <- stops]

-- c)
nouns = ["the garage", "a king", "a bot", "a killer", "the function", "the hate"]
verbs = ["kills", "hugs", "runs", "smiles at"] 
nvnTriple = [(x, y, z) | x <- nouns, y <- verbs, z <- nouns]


-- 2.
seekritFunc :: String -> Int
seekritFunc x = 
  div (sum (map length (words x))) -- sum of the length of all words
      (length (words x)) -- number of words
-- input a String and get the average length of a word in String

-- 3.
avgWord' :: Fractional a => String -> a
avgWord' x = 
  (/) (fromIntegral (sum (map length (words x))))
      (fromIntegral (length (words x)))

