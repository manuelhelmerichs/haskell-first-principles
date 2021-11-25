
i :: Num a => a
i = 1
-- doesn't work with i :: a, no instance for Num

f :: Float
f = 1.0
-- doesn't work with Num a => a, would need Fractional

g :: Fractional a => a
g = 1.0
-- works

h :: RealFrac a => a
h = 1.0

freud :: a -> a
freud x = x

-- rest done in repl

