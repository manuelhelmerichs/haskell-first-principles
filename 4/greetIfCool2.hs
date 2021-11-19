
module GreetIfCool2 where

greetIfCool coolness = 
    if cool coolness
        then putStrLn "eyy. What's up bro?"
    else
        putStrLn "Wrong password"
    where cool v =
            v == "downright frosty yo"

