In type theory, a sum type of two types is a type whose terms are terms in either type, but not simultaneously. In Haskell, sum types are represented using the pipe, `|`, in a datatype definition. Sums of types represent a disjunction, "or", of those types. If you have a sum of `Bool` and `Int`, your terms will be either a `Bool` value or an `Int` value.

#### notes
- cardinality: `|` as `+`, e.g. `data Bool = False | True` has the cardinality of `1 + 1 = 2`.

