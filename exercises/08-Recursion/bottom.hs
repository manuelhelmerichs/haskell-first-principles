f :: Bool -> Int
f True = 0
-- notice how f False is not defined,
-- the function is really:
f' :: Bool -> Int
f' False = 0
f' _ = error $ "*** Exception: "
  ++ " Non-exhaustive"
  ++ " patterns in function f"

-- rewritten in the maybe datatype
f'' :: Bool -> Maybe Int
f'' False = Just 0
f'' _ = Nothing

