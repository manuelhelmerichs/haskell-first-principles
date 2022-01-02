
data QuantumBool = QuantumTrue | QuantumFalse | QuantumBoth deriving (Eq, Show) -- haas cardinality 1 + 1 + 1

data TwoQs = MkTwoQs QuantumBool QuantumBool deriving (Eq, Show) -- has cardinality 3 * 3

