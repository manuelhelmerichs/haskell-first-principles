
data Rocks = Rocks String deriving (Eq, Show)

data Yeah = Yeah Bool deriving (Eq, Show)

data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- phew = Papu "chases" True won't typecheck (Rocks, Yeah both incomplete)

truth = Papu (Rocks "chomskydoz") (Yeah True) -- typchecks

-- typechecks, as Eq is derived
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- will not typecheck, as Ord is not derived / provided
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

