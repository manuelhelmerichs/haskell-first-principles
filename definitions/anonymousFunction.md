An anonymous function is a function which is not bound to an identifier and is instead passed as an argument to another function and/or used to construct another function. See the following examples.
```haskell
\x -> x
-- anonymous version of id

id x = x
-- not anonymous, it's bound to 'id'
```

