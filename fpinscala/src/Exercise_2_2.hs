module Exercise_2_2 (isSorted) where

import Control.Lens
import Data.Array
  
isSorted :: Array Int e -> (e -> e -> Bool) -> Bool
isSorted as ordered = if len <= 1 then True
                      else loop 0
  where loop n = if n >= (len - 1) then True
                 else if not $ ordered (as ! n) (as ! (n + 1)) then False
                 else loop (n + 1)
        len = (bounds as) ^. _2 + 1
