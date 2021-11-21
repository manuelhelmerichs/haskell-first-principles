
-- our typeclass
class Numberish a where
  fromNumber :: Integer -> a
  toNumber :: a -> Integer

-- our type
newtype Age =
  Age Integer
  deriving (Eq, Show)

-- our Numberish Age instance
instance Numberish Age where
  fromNumber n = Age n
  toNumber (Age n) = n

-- same here for Year
newtype Year =
  Year Integer
  deriving (Eq, Show)

instance Numberish Year where
  fromNumber n = Year n
  toNumber (Year n) = n

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
  where integerOfA = toNumber a
        integerOfAPrime = toNumber a'
        summed = integerOfA + integerOfAPrime

