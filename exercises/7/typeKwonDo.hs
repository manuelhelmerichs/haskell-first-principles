
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (x, _, z) (g, _, i) = ((x, g), (z, i))
