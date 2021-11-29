Composition is the application of a function to the result of having applied another function. The composition operator is a higher order function as it takes the functions it composes as arguments and then returns a function of the composition:
```haskell
(.) :: (b -> c) -> (a -> b) -> a -> c

-- can be implemented as
comp :: (b -> c) -> ((a -> b) -> (a -> c))
comp f g x = f (g x)
```
The function g is applied to x, f is applied to the result of g x.

