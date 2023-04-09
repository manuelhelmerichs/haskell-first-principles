
data OperatingSystem = GnuPlusLinux
                     | NixOS
                     | Mac
                     | Windows
                     deriving (Eq, Show)

data ProgLang = Haskell
              | Rust
              | Python
              deriving (Eq, Show)
              
data Programmer = Programmer { os :: OperatingSystem
                             , lang :: ProgLang
                             }
                             deriving (Eq, Show)

nineToFive :: Programmer
nineToFive = Programmer { os = Mac
                        , lang = Haskell
                        }

-- reordering possible, when using record syntax
fiveToNine :: Programmer
fiveToNine = Programmer { lang = Rust
                        , os = NixOS
                        }

allOperatingSystems :: [OperatingSystem]
allOperatingSystems = 
  [ GnuPlusLinux
  , NixOS
  , Mac
  , Windows
  ]

allLanguages :: [ProgLang]
allLanguages = [Haskell, Rust, Python]

allProgrammers :: [Programmer]
allProgrammers = [Programmer a b | a <- allOperatingSystems, b <- allLanguages]

