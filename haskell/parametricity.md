Parametricity is the property that holds in the presence of parametric polymorphism. Parametricity states that the behavior of a function will be uniform across all concrete applications of the function. Parametricity tells us that the function:
```Haskell
id :: a -> a
```
Can be understood to have the same exact behavior for every type in Haskell without us needing to see how it was written. It is the same property that tells us:
```Haskell
const :: a -> b -> a
```
const must return the first value - parametricity and the definition of the type requires it!
```
f :: a -> a ->
```
Here, f can only return the first or second value, nothing else, and it will always return one or the other consistently without changing. If the function f made use of (+) or (\*). it's type would be necessarily be constrained by the [[typeclass]] Num and thus be an example of ad-hoc, rather than parametric, [[polymorphism]].
```Haskell
blahFunc :: b -> String
```
blahFunc totally ignores its argument and is effectively a constant value of type String which requires a throw away argument for no reason.
```
convList :: a -> [a]
```
Unless the result is [], the resulting list has values that are all the same value. The list will always be the same length.
