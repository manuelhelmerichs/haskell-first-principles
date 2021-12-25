foldr
1. The rest of the fold (recursive invocation of foldr) is an argument to the folding function you passed to foldr. It doesn't directly self-call as a tail-call like foldl. You could think of it as alternating between applications of foldr and your folding function f. The next invocation of foldr is conditional on f having asked for more of the results of having folded the list. 
That is:
```haskell
foldr :: (a -> b -> b) -> b -> [a] -> b
--             ^
```
That b we're pointing at in (a -> b -> b) is the rest of the fold.
Evaluating that evaluates the next application of foldr.
2. Associates to the right.
3. Works with infinite lists. We know this because:
```haskell
foldr const 0 [1..]
1
```
4. Is a good default choice whenever you want to transform data structures, be they finite or infinite.

