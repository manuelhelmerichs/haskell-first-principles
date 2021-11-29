Currying is the process of transforming a function that takes multiple arguments into a series of functions which each take one argument and return one result. This is accomplished through the nesting. In Haskell, all functions are curried by default. You don't need to do anything special yourself.
```haskell
-- curry and uncurry alread exist in prelude
curry' :: ((a,b) -> c) -> a -> b -> c
curry' f a b = f (a, b)

uncurry' :: (a -> b -> c) -> ((a, b) -> c)
uncurry' f (a, b) = f a b

-- uncurried function; takes a tuple of its arguments
add :: (Int, Int) -> Int
add (x, y) = x + y

add' :: Int -> Int -> Int
add' = curry' add
```
A function that appears to take two arguments is two functions that each take one argument and return one result. What makes this work is that a function can return another function.
```haskell
f a b = a + b
-- is equivalent to
f = \a -> (\b -> a + b)
```

