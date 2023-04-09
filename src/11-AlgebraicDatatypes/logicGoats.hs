{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE InstanceSigs #-}

-- our newtype Goats (has to be unary)
newtype Goats = Goats Int deriving (Eq, Show, TooMany)

-- type class
class TooMany a where
  tooMany :: a -> Bool

-- instance (implementation) of tooMany for Int
instance TooMany Int where
  tooMany n = n > 42


instance TooMany (Int, String) where
  tooMany (n, _) = tooMany n
--   tooMany (a, _) = a > 2

instance TooMany (Int, Int) where
  tooMany (n, m) = (tooMany n) && (tooMany m)
--   tooMany (a, b) = (a + b) > 84

instance (Num a, TooMany a) => TooMany (a, a) where -- notice how to add constraints
  tooMany :: (Num a, TooMany a) => (a, a) -> Bool
  tooMany (x, y) = tooMany x || tooMany y

