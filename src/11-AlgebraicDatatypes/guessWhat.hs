
data GuessWhat = Chickenbutt deriving (Eq, Show)

data Product a b = Product a b deriving (Eq, Show)

data Sum a b = First a
             | Second b
             deriving (Eq, Show)

data RecordProduct a b =
  RecordProduct { pfirst :: a
                , psecond :: b
                }
                deriving (Eq, Show)


newtype NumCow = NumCow Int deriving (Eq, Show)

newtype NumPig = NumPig Int deriving (Eq, Show)

-- Farmhouse and Farmhouse' are the same:
data Farmhouse = Farmhouse NumCow NumPig deriving (Eq, Show)

type Farmhouse' = Product NumCow NumPig

newtype NumSheep = NumSheep Int deriving (Eq, Show)

-- again, you can nest Products!
data BigFarmhouse = BigFarmhouse NumCow NumPig NumSheep deriving (Eq, Show)

type BigFarmhouse' = Product NumCow (Product NumPig NumSheep)


type Name = String
type Age = Int
type LovesMud = Bool
type PoundsOfWool = Int

data CowInfo = CowInfo Name Age deriving (Eq, Show)

data PigInfo = PigInfo Name Age LovesMud deriving (Eq, Show)

data SheepInfo = SheepInfo Name Age PoundsOfWool deriving (Eq, Show)

data Animal = Cow CowInfo | Pig PigInfo | Sheep SheepInfo deriving (Eq, Show)
type Animal' = Sum CowInfo (Sum PigInfo SheepInfo)


trivialValue :: GuessWhat
trivialValue = Chickenbutt
trivial' :: Bool
trivial' = True

data Id a = MkId a deriving (Eq, Show)

idInt :: Id Integer
idInt = MkId 10

-- type Synonyms
type Awesome = Bool

person :: Product Name Awesome
person = Product "Simon" True

data Twitter = Twitter deriving (Eq, Show)

data AskFm = AskFm deriving (Eq, Show)

socialNetwork :: Sum Twitter AskFm
socialNetwork = First Twitter

socialNetwork' :: Sum Twitter AskFm
socialNetwork' = Second AskFm -- has to be AskFm

data SocialNetwork' = Twitter' | AskFm' deriving (Eq, Show)

type Twitter'' = String
type AskFm'' = String

twitter :: Sum Twitter'' AskFm''
twitter = First "Twitter"

askFm :: Sum Twitter'' AskFm''
askFm = First "AskFm" -- oh no, it First should be Twitter!

