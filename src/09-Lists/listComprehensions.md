```haskell
[ x^2 | x <- [1..10], rem x 2 == 0]
-- 1  2      3              4
```
Meaning:
1. the output function;
2. pipe designates the separation between the output function and the input;
3. input set: a generator list and a variable that represents the elements that will be drawn from that list. This says, "from a list of numbers 1-10, take (<-) each element as an input to the output function."
4. a predicate, only items that meet the True case in the predicate will be passed to the output list.

