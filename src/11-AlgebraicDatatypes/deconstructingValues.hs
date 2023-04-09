newtype Name = Name String deriving Show 
newtype Acres = Acres Int deriving Show

-- FarmerType is a Sum
data FarmerType = DairyFarmer
                | WheatFarmer
                | SoybeanFarmer
                deriving Show

-- Farmer is a plain old product of
-- Name, Acres, and FarmerType
data Farmer =
  Farmer Name Acres FarmerType
  deriving Show

isDairyFarmer :: Farmer -> Bool
isDairyFarmer (Farmer _ _ DairyFarmer) = True
isDairyFarmer _ = False

-- as a record:
data FarmerRec = FarmerRec
    { name :: Name
    , acres :: Acres
    , farmerType :: FarmerType
    }
    deriving Show

isDairyFarmerRec :: FarmerRec -> Bool
isDairyFarmerRec farmer =
  case farmerType farmer of
    DairyFarmer -> True
    _           -> False


-- examples
farmerA = Farmer (Name "Willem") (Acres 11) WheatFarmer
farmerB = FarmerRec (Name "Jude") (Acres 9999) SoybeanFarmer

