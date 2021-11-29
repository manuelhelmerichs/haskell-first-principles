Polymorphism in Haskell means being able to write code in terms of values which may be one of several, or any, type. Polymorphism in Haskell is either parametric or constrained. The identity function, id, is an example of a parametrically polymorphic function:
```Haskell
id :: a -> a
id x = x
```
Here id works for a value of any type because it doesn't use any information specific to a given type or set of types. Whereas, the following function isEqual:
```Haskell
isEqual :: Eq a => a -> a -> Bool
isEqual x y = x == y
```
Is polymorphic, but constrained or bounded to the set of types which have an instance of the Eq typeclass.

Polymorphism refers to type variables which may refer to more than one concrete type. In Haskell, this will usually manifest as parametric or [[ad-hocPolymorphism]]. By having a larger set of types, we intersect the commonalities of them all to produce a smaller set of correct terms. This makes it less likely we'll write an incorrect program and lets us reuse the code with other types.

