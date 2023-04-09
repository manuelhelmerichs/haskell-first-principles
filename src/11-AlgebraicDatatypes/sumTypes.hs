import Data.Int

-- sum types, because cardinality can be computed by changing | to +
data BigSmall = -- |4| = |2| + |2|
    Big Bool -- |2|
  | Small Bool -- |2|
  deriving (Eq, Show)

data NumberOrBool = -- |258|
    Numba Int8 -- |256|
  | BoolyBool Bool -- |2|
  deriving (Eq, Show)

