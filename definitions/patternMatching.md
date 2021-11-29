Pattern matching is a syntactic way of deconstructing product and sum types to get at their inhabitants. With respect to products, pattern matching gives you the means for deconstructing and exposing the contents of products, binding one or more values contained therein to names. With sums, pattern matching lets you discriminate which inhabitant of a sum you mean to handle in that match.
```haskell
-- nullary data constructor, not a sum or product
-- Just a single value.
data Blah = Blah
```
Pattern matching on Blah can only do one thing.
```haskell
blahFunc :: Blah -> Bool
blahFunc Blah = True

data Identity a =
  Identity a deriving (Eq, Show)
```
Identity is a unary data constructor. Still not a product, only contains one value.
```haskell
-- when you pattern match on Identity, 
-- you can unpack and expose the 'a'
unpackIdentity :: Identity a -> a
unpackIdentity (Identity x) = x

-- But you can choose to ignore the contents of Identity
ignoreIdentity :: Identity a -> Bool
ignoreIdentity (Identity _) = True

-- or ignore it completely since matching on a non-sum
-- data constructor changes nothing
ignoreIdentity' :: Identity a -> Bool
ignoreIdentity' _ = True

data Product a b =
  Product a b deriving (Eq, Show)
```
Now we can choose to use none, one or both of the values in product of a and b:
```haskell
productUnpackOnlyA :: Product a b -> a
productUnpackOnlyA (Product x _) = x

productUnpackOnlyB :: Product a b -> b
productUnpackOnlyB (Product _ y) = y
```
Or we can bind them to a different name:
```haskell
productUnpack :: Product a b -> (a, b)
productUnpack (Product x y) = (x, y)
```
What happens if you try to bind the values in the product to the same name?
```haskell
data SumOfThree a b c =
  FirstPossible a
  | SecondPossible b
  | ThirdPossible c
  deriving (Eq, Show)
```
Now we can discriminate by the inhabitants of the sum and choose to do different things based on which constructor in the sum they were.
```haskell
sumToInt :: SumOfThree a b c -> Integer
sumToInt (FirstPossible _) = 0
sumToInt (SecondPossible _) = 1
sumToInt (ThirdPossible _) = 2

-- we can selectively ignore inhabitants of the sum
sumToInt ::SumOfThree a b c -> Integer
sumToInt (FirstPossible _) = 0
sumToInt _ = 1
```
Pattern matching is about your data.

