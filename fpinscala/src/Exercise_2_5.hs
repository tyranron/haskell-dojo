module Exercise_2_5 (compose) where

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \a -> f (g a)
