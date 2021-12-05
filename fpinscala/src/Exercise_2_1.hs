module Exercise_2_1 (fib) where

fib :: Int -> Int
fib 0 = 0
fib 1 = 0
fib n = go n 0 1 where
  go i prev acc = if i <= 2 then acc
                  else go (i - 1) acc (prev + acc)
