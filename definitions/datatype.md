A datatype is how we declare and create data for our functions to receive as inputs. Datatype declarations begin with the keyword data. A datatype is made up of of type constructor and zero or more data constructors which have zero or more arguments.
```haskell
data HuskyType a = HuskyData
--       [1]          [2]
data PugType = PugData
--     [3]       [4]
data Example = Example Int String deriving (Eq, Show)
--     [5]
```
1. The type constructor, here the it takes a as argument.
2. The data constructor, because it doesn't take the 'a' as an argument, 'a' is a phantom (has no witness).
3. Because the type constructor `PugType` does not take an argument, it is a type constant.
4. `PugData` cannot take an argument, and is thus a constant value (= `nullary`)
5. `Example` is a product type, as it takes two arguments. Every type that takes more than one argument is a product type.

Use `:k` on the type constructor for the kind signature, a kind is a type of types. Use `:t` on the data constructor (not its arguments) for the type of the value it takes (as an argument).
```haskell
myPug = PugData :: PugType

myHusky :: HuskyType a
myHusky = HuskyData

myOtherHusky :: Num a => HuskyType a
myOtherHusky = HuskyData
```
Information about types does not persist through to runtime. Data are what we're working with at runtime:
```haskell
type constructors -- compile-time
-------------------- phase separation
data constructors -- runtime
```

