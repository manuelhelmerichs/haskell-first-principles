Values in Haskell get reduced to weak head normal form by default. Weak head normal form ("WHNF") is a larger set and contains both the possibility that the expression is evaluated (normal form) and the possibility that the expression has been evaluated to the point of arriving at a data constructor or lambda awaiting an argument.

