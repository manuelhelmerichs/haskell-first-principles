Normal order is a common evaluation strategy in lambda calculi. Normal order means evaluating (applying or beta reducing) the leftmost outermost lambda first, evaluating terms nested within after you've run out of arguments to apply. Normal order isn't how Haskell code is evaluated - it's call-by-need ("lazy evaluation") instead. We'll explain this more later. 

