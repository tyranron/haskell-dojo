module Exercise_2_4 (myUncurry) where

myUncurry :: (a -> b -> c) -> (a, b) -> c
myUncurry f = \(a, b) -> f a b
