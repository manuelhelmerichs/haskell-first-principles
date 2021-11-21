
data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Show)
-- if deriving Ord, values to the left are < values to the right:
-- Mon < Tue < Wed < Thu are True and so on

data Date = Date DayOfWeek Int deriving (Ord, Show)

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _   _   = False

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare _   Fri = LT
  compare Fri _   = GT
  compare _   _   = EQ
  
instance Eq Date where
  (==) (Date weekday dayOfMonth)
       (Date weekday' dayOfMonth') = weekday == weekday' && dayOfMonth == dayOfMonth'

