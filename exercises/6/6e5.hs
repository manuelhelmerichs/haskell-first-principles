
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where -- brackets not necessary when only one argument (type)
    (==) (TisAn x) (TisAn x') = x == x'


data TwoIntegers = Two Integer Integer

instance Eq (TwoIntegers) where
    (==) (Two x y) (Two x' y') = (x == x') && (y == y')


data StringOrInt = TisAnInt Int | TisAString String

instance Eq (StringOrInt) where
    (==) (TisAnInt x) (TisAnInt x') = x == x'
    (==) (TisAString y) (TisAString y') = y == y'
    (==) (TisAnInt _) (TisAString _) = False
    (==) (TisAString _) (TisAnInt _) = False


data Pair a = Pair a a

instance Eq a => Eq (Pair a) where -- a needs to be in Eq
    (==) (Pair a b) (Pair a' b') = (a == a') && (b == b')


data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = (a == a') && (b == b')


data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) _ _ = False
    

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye a) (Goodbye a') = a == a'
    (==) _ _ = False

