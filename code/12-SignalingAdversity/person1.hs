
type Name = String
type Age = Integer

data Person = Person Name Age deriving Show

-- possible problems: negative age, empty name
-- fix: smart constructor (using maybe)
mkPerson :: Name -> Age -> Maybe Person
mkPerson name age
  | name /= "" && age >= 0 = Just $ Person name age
  | otherwise = Nothing

-- writing the Eq, Show instance by ourselves
data PersonInvalid = NameEmpty
  | AgeTooLow

toString :: PersonInvalid -> String
toString NameEmpty = "NameEmpty"
toString AgeTooLow = "AgeTooLow"

instance Show PersonInvalid where
  show = toString

instance Eq PersonInvalid where
  (==) NameEmpty NameEmpty = True
  (==) AgeTooLow AgeTooLow = True

blah :: PersonInvalid -> String
blah pi
  | pi == NameEmpty = "NameEmpty"
  | pi == AgeTooLow = "AgeTooLow"
  | otherwise = "???"

mkPerson' :: Name -> Age -> Either PersonInvalid Person
mkPerson' name age
  | name /= "" && age >= 0 = Right $ Person name age
  | name == "" = Left NameEmpty
  | otherwise = Left AgeTooLow


-- testing
jP1 = mkPerson "test" 5
jP2 = mkPerson "tobi" (-1)
eP1 = mkPerson' "Djali" 5
eP2 = mkPerson' "" 5
eP3 = mkPerson' "bry" (-2)
eP4 = mkPerson' "" (-2) -- here, only the first error

