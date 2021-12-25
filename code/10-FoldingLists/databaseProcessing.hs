import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbNumber 1202 -- for testing purposes
  , DbString "Hello, world!"
  , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

-- filters for DbDate values and returns a list of the UTCTime values inside them
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr filterDate []
  where filterDate :: DatabaseItem -> [UTCTime] -> [UTCTime]
        filterDate (DbDate x) xs = x:xs
        filterDate _ xs = xs

-- filters for DbNumber values and returns a list of the Integer values inside them 
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr filterNumber []
  where filterNumber :: DatabaseItem -> [Integer] -> [Integer]
        filterNumber (DbNumber x) xs = x:xs
        filterNumber _ xs = xs

-- gets the most recent date
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

-- sums all of the DbNumber values
sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

-- average of DbNumber values
-- ugly solution:
avgDb :: [DatabaseItem] -> Double
avgDb x = fromIntegral (sumDb x) / fromIntegral (length (filterDbNumber x))

-- more pointfree, not sure if one could remove the x aswell
avgDb' :: [DatabaseItem] -> Double
avgDb' x = (/) (integralSum x) (integralLength x)
  where integralSum = fromIntegral . sumDb
        integralLength = fromIntegral . length . filterDbNumber

