import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

-- filters for DbDate values and returns a list of the UTCTime values inside them
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = undefined

-- filters for DbNumber values and returns a list of the Integer values inside them 
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = undefined

-- gets the most recent date
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = undefined

-- sums all of the DbNumber values
sumDb :: [DatabaseItem] -> Integer
sumDb = undefined

-- average of DbNumber values
avgDb :: [DatabaseItem] -> Double
avgDb = undefined

