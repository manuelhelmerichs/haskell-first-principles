
data Fiction = Test1 deriving Show
data Nonfiction = Test2 deriving Show

data BookType = FictionBook Fiction
              | NonfictionBook Nonfiction
              deriving Show

type AuthorName = String

data Author0 = Author (AuthorName, BookType) -- not in normal form
data Author1 = Fiction AuthorName | Nonfiction AuthorName deriving (Eq, Show) -- in normal form

data Expr =
     Number Int
   | Add Expr Expr
   | Minus Expr
   | Mult Expr Expr
   | Divide Expr Expr

-- stricter implementation of normal form,
-- representing products with tuples
-- and sums with Either
type Number = Int
type Add = (Expr, Expr)
type Minus = Expr
type Mult = (Expr, Expr)
type Divide = (Expr, Expr)

data EitherExpr =
     Either Number
       (Either Add
         (Either Minus
           (Either Mult Divide)))

data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

type Gardener = String

-- not in normal form, needs FlowerType
data Garden = Garden Gardener FlowerType
              deriving Show

-- in normal form
data NormalGarden = Gardenia' Gardener
                  | Daisy' Gardener
                  | Rose' Gardener
                  | Lilac' Gardener
                  deriving Show
