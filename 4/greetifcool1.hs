module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
    if cool
        then putStrLn "eyy. What's shaking?"
    else
        putStrLn "pssshhh."
    where cool =
            coolness == "downright frosty yo"

