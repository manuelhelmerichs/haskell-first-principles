Tail recursion is a function whose tail calls are recursive invocations of itself. This is distinguished from functions that call other functions in their tail call.
```haskell
f x y z = h (subFunction x y z)
  where subFunction x y z = g x y z
```
The above is not tail recursive, calling h, not itself.
`f x y z = h (f (x - 1) y z)`
Still not tail recursive. 'f' is invoked again but not in the tail call of f; it's an argument to the tail call, h.
`f x y z = f (x - 1) y z`
This is tail recursive. `f` is calling itself directly with no intermediaries.
```haskell
foldr f z [] = z
foldr f z (x:xs) = f x (foldr f z xs)
```
Not tail recursive, we give up control to the combining function `f` before continuing through the list. `foldr's` recursive calls will bounce between `foldr` and f.
```haskell
foldl f z [] = z
foldl f z (x:xs) = foldl f (f z x) xs
```
Tail recursive. `foldl` invokes itself recursively. The combining function is only an argument to the recursive fold.


## Other sources
Tail recursion can be optimized to while(true), tail recursion means the recursive call is the last thing that get's evaluated.
Thus, it uses constant memory.

