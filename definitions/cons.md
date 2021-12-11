Cons is ordinarily used as a verb to signify that a list value has been created by consing a value onto the head of another list value. In Haskell, `(:)` is the cons operator for the list type. It is a data constructor defined in the list datatype:
```haskell
    1 : [2, 3]
-- [a]    [b]

   [1, 2, 3]
--    [c]

(:) :: a -> [a] -> [a]
--    [d]   [e]    [f]
```

- a) The number 1, the value we are consing.
- b) A list of the number 2 followed by the number 3.
- c) The final result of consing 1 onto [2, 3]
- d) The type variable a corresponds to 1, the value we consed onto the list value.
- e) The first occurrence of the type [a] in the cons operator's type corresponds to the second and final argument (:) accepts, which was [2, 3].
- f) The second and final occurrence of the type [a] in the cons operator's type corresponds to the final result [1, 2, 3].

