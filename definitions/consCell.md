Cons cell is a data constructor and a product of the types a and [a] as defined in the list datatype. Because it references the list type constructor itself in the second argument, it allows for nesting of multiple cons cells, possibly indefinitely with the use of recursive functions, for representing an indefinite number of values in series:
```haskell
data [] a = [] | a : [a]
--                 ^ cons operator

-- defining it ourselves
data List a = Nil | Cons a (List a)

-- creating a list using our list type
Cons 1 (Cons 2 (Cons 3 Nil))
```
Here, `(Cons 1 ...)`, `(Cons 2 ...)` and `(Cons 3 Nil)` are all individual cons cells in the list [1, 2, 3].

