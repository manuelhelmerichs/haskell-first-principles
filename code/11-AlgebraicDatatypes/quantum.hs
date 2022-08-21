data Quantum =
    Yes
  | No
  | Both
  deriving (Eq, Show)


-- sum type: 3 + 3
quantSum1 :: Either Quantum Quantum
quantSum1 = Right Yes

quantSum2 :: Either Quantum Quantum
quantSum2 = Right No

quantSum3 :: Either Quantum Quantum
quantSum3 = Right Both

quantSum4 :: Either Quantum Quantum
quantSum4 = Left Yes

quantSum5 :: Either Quantum Quantum
quantSum5 = Left No

quantSum6 :: Either Quantum Quantum
quantSum6 = Left Both


-- product type: 3 * 3
quadProd1 :: (Quantum, Quantum)
quadProd1 = (Yes, Yes)

quadProd2 :: (Quantum, Quantum)
quadProd2 = (Yes, No)

quadProd3 :: (Quantum, Quantum)
quadProd3 = (Yes, Both)

quadProd4 :: (Quantum, Quantum)
quadProd4 = (No, Yes)

quadProd5 :: (Quantum, Quantum)
quadProd5 = (No, No)

quadProd6 :: (Quantum, Quantum)
quadProd6 = (No, Both)

quadProd7 :: (Quantum, Quantum)
quadProd7 = (Both, Yes)

quadProd8 :: (Quantum, Quantum)
quadProd8 = (Both, No)

quadProd9 :: (Quantum, Quantum)
quadProd9 = (Both, Both)


-- function type: 3^3
quantFlip1 :: Quantum -> Quantum
quantFlip1 Yes = Yes
quantFlip1 No = Yes
quantFlip1 Both = Yes

quantFlip2 :: Quantum -> Quantum
quantFlip2 Yes = Yes
quantFlip2 No = Yes
quantFlip2 Both = No

quantFlip3 :: Quantum -> Quantum
quantFlip3 Yes = Yes
quantFlip3 No = Yes
quantFlip3 Both = Both

quantFlip4 :: Quantum -> Quantum
quantFlip4 Yes = Yes
quantFlip4 No = No
quantFlip4 Both = Yes

quantFlip5 :: Quantum -> Quantum
quantFlip5 Yes = Yes
quantFlip5 No = Both
quantFlip5 Both = Yes

quantFlip6 :: Quantum -> Quantum
quantFlip6 Yes = No
quantFlip6 No = Yes
quantFlip6 Both = Yes

quantFlip7 :: Quantum -> Quantum
quantFlip7 Yes = Both
quantFlip7 No = Yes
quantFlip7 Both = Yes

quantFlip8 :: Quantum -> Quantum
quantFlip8 Yes = Both
quantFlip8 No = Yes
quantFlip8 Both = No

-- ...
quantFlip13 :: Quantum -> Quantum
quantFlip13 Yes = Both
quantFlip13 No = Yes
quantFlip13 Both = Both

-- ...
quantFlip27 :: Quantum -> Quantum
quantFlip27 Yes = Both
quantFlip27 No = Both
quantFlip27 Both = Both


-- 2^3 = 8
convert :: Quantum -> Bool
convert = undefined
-- Yes = True
-- No = True
-- Both = True
--
-- Yes = True
-- No = True
-- Both = False
--
-- Yes = True
-- No = False
-- Both = True
--
-- Yes = False
-- No = True
-- Both = True
--
-- Yes = False
-- No = True
-- Both = False
--
-- Yes = True
-- No = False
-- Both = False
--
-- Yes = False
-- No = False
-- Both = True
--
-- Yes = False
-- No = False
-- Both = False

