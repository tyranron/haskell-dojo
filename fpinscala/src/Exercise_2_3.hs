module Exercise_2_3 (myCurry) where
  
myCurry :: ((a, b) -> c) -> a -> b -> c
myCurry f = \a -> \b -> f (a, b)
