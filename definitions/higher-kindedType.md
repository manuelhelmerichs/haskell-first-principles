A *higher-kinded type* is any type whose kind has a function arrow in it and which can be described as a type constructor rather than a type constant. The following types are of a higher kind than \*:
```Haskell
Maybe :: * -> *
[] :: * -> *
Either :: * -> *
(->) :: * -> * -> *
```
The following are not:
```Haskell
Int :: *
Char :: *
String :: *
[Char] :: *
```
This is not to be confused with higher kinded *polymorphism*, which we'll discuss later.

