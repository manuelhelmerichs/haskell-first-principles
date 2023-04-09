{-# LANGUAGE GeneralizedNewTypeDeriving #-}

-- our newtype Goats (has to be unary)
newtype Goats = Goats Int deriving (Eq, Show) -- with the pragma, can derive TooMany!

-- type class
class TooMany a where
  tooMany :: a -> Bool

-- instance (implementation) of tooMany for Int
instance TooMany Int where
  tooMany n = n > 42

instance TooMany Goats where
  tooMany (Goats n) = n > 43
  -- tooMany (Goats n) = tooMany n when not deriving from GeneralizedNewTypeDeriving

