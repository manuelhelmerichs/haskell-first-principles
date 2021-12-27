A tail call is the final result of a function. Some examples of tail calls in Haskell functions:
```haskell
f x y z = h (subFunction x y z)
  where subFunction x y z = g x y z
-- the "tail call" is h (subFunction x y z)
-- or, more precisely, h.
```

