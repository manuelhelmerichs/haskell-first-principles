Type inference is a faculty some programming languages, most notably Haskell and ML, have to infer principal types from terms without needing explicit type annotations. There are, in some cases, terms in Haskell which can be well-typed but which have no principal type. In those cases, an explicit type annotation must be added.

With respect to Haskell, the principal type is the most generic type which still typechecks. More generally, _Principal type_ is a property of of the type system you're interacting with. Principal typing holds for that type system if a type can be found for a term in an environment for which all other types for that term are instances of the principal type. Here are some examples:

```Haskell
-- Given the inferred types
a
Num a => a
Int

-- The principal type here is the
-- parametrically polymorphic 'a'.

-- Given these types
(Ord a, Num a) => a
Integer

-- The principal type is
-- (Ord a, Num a) => a
```
