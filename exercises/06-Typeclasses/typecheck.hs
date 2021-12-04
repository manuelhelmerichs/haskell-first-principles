
-- 1
-- data Person = Person Bool

-- printPerson :: Person -> IO()
-- printPerson person = putStrLn (show person)

-- will not typecheck, as Person does not derive Show

-- 2
-- will not compile; missing Eq

data Mood = Blah
  | Woot deriving (Show, Eq)

settleDown x = if x == Woot
  then Blah
  else x

-- 3
-- a) Blah, Woot
-- b) no instance of Num
-- c) no instance of Ord

-- 4
type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves " "dogs"
-- will typecheck, s1 is partially applied function (will not print)

