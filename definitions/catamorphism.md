A catamorphism is a generalization of folds to arbitrary datatypes. Where a fold allows you to break down a list into an arbitrary datatype, a catamorphism is a means of breaking down the structure of any datatype. The `bool :: a -> a -> Bool -> a` function in Data.Bool is an example of a simple catamorphism for a simple, non-collection datatype. Similarly, `maybe :: b -> (a -> b) -> Maybe a -> b` is the catamorphism for Maybe. Notice the pattern:
```haskell
data Bool = False | True
bool :: a -> a -> Bool -> a

data Maybe a = Nothing | Just a
maybe :: b -> (a -> b) -> Maybe a -> b

data Either a b = Left a | Right b
either :: (a -> c) -> (b -> c) -> Either a b -> c
```

