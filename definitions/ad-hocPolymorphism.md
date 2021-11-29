Ad-hoc polymorphism (sometimes called "constrained polymorphism") is [[polymorphism]] that applies one or more typeclass constraints to what would've otherwise been a parametrically polymorphic type variable. Here, rather than representing a uniformity of behavior across all concrete applications, the purpose of ad-hoc polymorphism is to allow the functions to have different behavior for each instance. This ad-hoc-ness is constrained by the types in the typeclass that defines the methods and Haskell's requirement that typeclass instances be unique for a given type. For any given combination of typeclass and a type, such as Ord and Bool, there must only exist one unique instance in scope. This makes it considerably easier to reason about typeclasses. See the example for disambiguation.
```Haskell
(+) :: Num a => a -> a -> a

-- the above function is leveraging
-- ad-hoc polymorphism via the
-- Num typeclass

c' :: a -> a -> a

-- This function is not,
-- it's parametrically polymorphic in 'a'.
```

