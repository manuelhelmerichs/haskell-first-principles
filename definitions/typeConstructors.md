Type constructors in Haskell are not values and can only be used in type signatures. Just as data declarations generate data constructors to create values that inhabit that type, data declarations generate type constructors which can be used to denote that type.
```Haskell
type Name = String
data Pet = Cat | Dog Name
```
In the above example, Pet is the type constructor. A guideline for differentiating the two kinds of constructors is that type constructors always go to the left of the = in a data declaration.

