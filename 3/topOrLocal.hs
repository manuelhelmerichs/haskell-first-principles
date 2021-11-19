module TopOrLocal where

topLevelFunction :: Integer -> Integer
topLevelFunction x =
    x + woot + topLevelValue
    where woot :: Integer -- this is a local definition of woot, can not be used elsewhere in the file
          woot = 10

topLevelValue :: Integer -- notice how this is below topLevelFunction, where it is applied - this doesn't matter, as it's still top level
topLevelValue = 5
