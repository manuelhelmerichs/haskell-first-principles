
data Mood = Blah | Woot deriving Show
-- 1. data Mood is the type constructor / name of this type

-- 2. one could use Blah or Woot

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah


