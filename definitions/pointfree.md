Pointfree is programming tacitly, or without mentioning arguments by name. This tends to look like "plumby" where you're routing data around implicitly or leaving off unnecessary arguments thanks to currying. The "point" referred to in the term pointfree is an argument.
```haskell
blah x = x
addAndDrop x y = x + 1
reverseMkTuple a b = (b, a)
reverseTuple (a, b) = (b, a)

-- pointfree versions of the above
blah = id
addAndDrop = const . (1 +)
reverseMkTuple = flip (,)
reverseTuple = uncurry (flip (,))
```

