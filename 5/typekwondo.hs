
munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge f1 f2 x = fst $ f2 $ f1 x

