
{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1 -- without NoMonomorphismRestriction this would have the type integer (instead of Num a => a)

-- 1.
-- a) (*9) 6 also 54, Num a => a
-- b) head [(0, "doge"), (1, "kitteh")] also Num a => [(a, [Char])]
-- c) head [(0 :: Integer, "doge"), (1, "kitteh")] also [(Integer, [Char])]
-- d) if False then True else False also False :: Bool
-- e) length [1,2,3,4,5] also 5 :: Int
-- f) (length [1,2,3,4]) > (length "TACOCAT"), also False :: Bool
-- 
-- 
-- 2.
-- x = 5
-- y = x + 5
-- w = y * 10 
-- 
-- type of 100 is Num
-- 
-- 
-- 3.
-- x = 5
-- y = x + 5
-- z y = y * 10
-- 
-- type of z is Num a => a -> a (z is just the name of the function)
-- 
-- 
-- 4. 
-- x = 5
-- y = x + 5
-- f = 4 / y
-- 
-- type of f is fractional
-- 
-- x = "Julie"
-- y = " <3" z = "Haskell"
-- f = x ++ y ++ z
-- 
-- type of f is [Char]
-- 


