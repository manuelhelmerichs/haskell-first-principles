Higher-order functions are functions which themselves take functions as arguments or return functions as results. Due to currying, technically any function that appears to take more than one argument is of higher order in Haskell.
```haskell
-- technically higher order because of currying
Int -> Int -> Int

-- returns another function after applying the first argument
Int -> (Int -> Int)

-- the rest of the following examples are types of higher order functions
(a -> b) -> a -> b
(a -> b) -> [a] -> [b]
(Int -> Bool) -> [Int] -> [Bool]

-- also higher order, this one takes a function argument which
-- itself is higher order as well
((a -> b) -> c) -> [a] -> [c]
```

