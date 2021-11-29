A module is the unit of organization that the Haskell programming language uses to collect together declarations of values, functions, data types, typeclasses and typeclass instances. Any time you use "import" in Haskell you are importing declarations from a module.
```Haskell
{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where
--     ^ name of the module
```
Here we made our Haskell source file have a module and we named it DetermineTheType. We included a directive to the compiler to disable the monomorphism restricition before we declared the module. Also consider the following example using import:
```Haskell
import Data.Aeson (encode)
--     ^ the module Data.Aeson
import Database.Persist
--     ^ the module Database.Persist
```
In the above example, we are importing the function encode declared in the module Data.Aeson along with any typeclass instances. With the module Database.Persist we are importing everything it makes available.

