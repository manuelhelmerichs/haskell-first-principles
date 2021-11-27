module GreetIfCool3 where

greetIfCool :: String -> IO()
greetIfCool coolness =
  case cool of
    True -> putStrLn "eyyy, what's shaking?"
    False -> putStrLn "pshh"
  where cool = coolness == "downright frosty yo"

