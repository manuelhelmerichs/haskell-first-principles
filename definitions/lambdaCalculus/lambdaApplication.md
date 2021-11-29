Application is how one evaluates or reduces lambdas, this binds the argument to whatever the lambda was applied to. Computations are performed in lambda calculus by applying lambdas to arguments until you run out of arguments to apply lambdas to.

(\x.x)1

This example reduces to 1, the identity \x.x was applied to the value 1, x was bound to 1, and the lambda's body is x, so it just kicks the 1 out. In a sense, applying the \x.x consumed it. We reduced the amount of structure we had.

