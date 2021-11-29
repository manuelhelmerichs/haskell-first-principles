Bottom is a non-value used to denote that the program cannot return a value or result. The most elemental manifestation of this is a program that loops infinitely. Other forms can involve things like writing a function that doesn't handle all its inputs and fails on a pattern match. The following are examples of bottom:
```haskell
-- if you apply this to any values, it'll recurse indefinitely
f x = f x

-- it'll explode if you pass a False value
dontDoThis :: Bool -> Int
dontDoThis True = 1

-- morally equivalent to
definitelyDontDoThis :: Bool -> Int
definitelyDontDoThis False = error "oops"
```
Bottom can be useful as a canary for signaling when code paths are being evaluated. We usually do this to determine how lazy a program is or isn't.

