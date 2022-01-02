
-- in product type syntax
data Person = MkPerson String Int deriving (Eq, Show)

julss = MkPerson "julie" 108
chris = MkPerson "chris" 16

getName :: Person -> String
getName (MkPerson n _) = n

-- in record syntax
data RecordPerson = Person { name :: String , age :: Int } deriving (Eq, Show)

whaat = Person "julie" 108
dopee = Person "chris" 16

-- try name whaat ; :t name

