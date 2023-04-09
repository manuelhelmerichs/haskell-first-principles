module Arith4 where

-- read :: Read a => String -> a
-- show :: Show a => a -> String

-- roundTrip :: (Show a, Read b) => a -> b
-- roundTrip a = read (show a)

roundTrip' :: (Show a, Read b) => a -> b
roundTrip' = read . show

main = do
  print (roundTrip' 4 :: Int)
  print (id 4)
  print (roundTrip' 4 :: Int)


