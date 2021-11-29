Data constructors in Haskell provide a means of creating values that inhabit a given type. Data constructors in Haskell have a type and can either be constant values (nullary) or take one or more arguments, like functions. In the following example, Cat is a nullary data constructor for Pet and Dog is a data constructor that takes an argument.
```Haskell
type Name = String
data Pet = Cat | Dog Name
```
The data constructors have the following types:
```Haskell
:t Cat
Cat :: pet
:t Dog
Dog :: Name -> Pet
```

