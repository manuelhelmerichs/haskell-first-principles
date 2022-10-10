data Expr = Lit Integer
          | Add Expr Expr
          deriving Show

eval :: Expr -> Integer
eval (Lit i) = i
eval (Add x y) = (eval x) + (eval y)

printExpr :: Expr -> String
printExpr (Lit i)
  | i < 0 = "(" ++ show i ++ ")"
  | otherwise = show i
printExpr (Add x y) = (printExpr x) ++ " + " ++ (printExpr y)

