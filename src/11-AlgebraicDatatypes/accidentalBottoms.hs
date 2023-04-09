
data Automobile' = Null'
                | Car' { make' :: String
                       , model' :: String
                       , year' :: Integer
                       }
                deriving (Eq, Show)

-- don't: make' Null' throws an exception

-- solution: wrap it!

data Car = Car { make :: String
               , model :: String
               , year :: Integer
               }
               deriving (Eq, Show)

data Automobile = Null
                | Automobile Car
                deriving (Eq, Show)

-- make Null : helpful type error!

