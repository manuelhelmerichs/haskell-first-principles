
data Price = Price Integer deriving (Eq, Show)

data Size = Size Integer deriving (Eq, Show)

data Manufacturer = Mini
                  | Mazda
                  | Tata
                  deriving (Eq, Show)

data Airline = PapuAir
             | Ryanair
             | Lufthansa
             | Emirates
             deriving (Eq, Show)

data Vehicle = Car Manufacturer Price
             | Plane Airline Size
             deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000000)
clownCar = Car Tata (Price 700)

vehicleCollection :: [Vehicle]
vehicleCollection = [myCar, urCar, clownCar, doge]

doge = Plane PapuAir (Size 1000)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
-- isPlane (Plane _ _) = True
-- isPlane _ = False
isPlane = not . isCar


areCars :: [Vehicle] -> [Bool]
areCars = map isCar

getManu :: Vehicle -> Manufacturer
getManu (Car a b) = a
getManu _ = error "no manufacturer for planes!"

-- 4 will return exception

