
-- this is a test
palindrom a = reverse a == a

main :: IO ()
main = do
    a <- getLine
    print a
    putStrLn $ "You said " ++ a ++" - why?"
    b <- getLine
    putStrLn $ "Ah, thank you for your explanation."

