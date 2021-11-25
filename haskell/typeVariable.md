Type variable is a way to refer to an unspecified type or set of types in Haskell type signatures. Type variables ordinarily will be equal to themselves throughout a type signature. Let us consider some examples.

```Haskell
id :: a -> a

-- One type variable 'a' that occurs twice,
-- once as an argument, once as a result.
-- Parametrically polymorphic, could be
-- strictly anything

(+) :: Num a => a -> a

-- One type variable 'a', constrained
-- to needing an instance of Num. Two
-- arguments, one result.
-- All the same type.
```