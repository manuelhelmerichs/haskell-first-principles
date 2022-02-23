In type theory, a product type is a type made of a set of types compounded over each other. In Haskell, we represent products using tuples or data constructors with more than one argument. The "compounding" is from each type argument to the data constructor representing a value that coexists with all the other values simultaneously. Products of types represent a conjunction, "and", of those types. If you have a product of `Bool` and `Int`, your terms will each contain a `Bool` and `Int` value.

#### notes
- cardinality: nested expression as `*`: E.g. `data TwoQs = MkTwoQs Bool Bool` has the cardinality of `2 * 2 = 4`.
