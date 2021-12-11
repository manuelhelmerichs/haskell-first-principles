The spine is a way to refer to the structure that glues a collection of values together. In the list datatype it is formed by the recursive nesting of cons cells. The spine is, in essence, the structure of collection that isn't the values contained therein. Often spine will be used in reference to lists, but it applies with tree data structures as well:
```haskell
-- given the list [1, 2, 3]

 1 : ---------| the nested cons operators
   (2 : ------| here represent the spine.
      (3) : --|
            []))

-- blanking the irrelevant values out

 _ : ---------|
   (_ : ------|
      (_) : ---> spine
            []))
```

