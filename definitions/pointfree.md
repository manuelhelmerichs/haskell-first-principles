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

### how to transform into point free style
The trick is to always transform things into prefix form, and then do a eta elimination. Each line in the following is one step of the transformation:
f a b c = (a+b) * c 
f a b c = (*) (a+b) c  -- prefix form of (*)
f a b = (*) (a+b)      -- eliminate c
f a b = (*) ((+) a b)  -- prefix form of (+)
f a b = (*) $ (+) a b  -- replace parens with dollar
f a = (*) . (+) a      -- elminate b
f a = (.) (*) ((+) a)  -- prefix form of (.)
f a = (.) (*) $ (+) a  -- replace parens with dollar
f = (.) (*) . (+)      -- eliminate a
