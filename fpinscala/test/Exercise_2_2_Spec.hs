module Exercise_2_2_Spec where

import Data.Array
import Test.Hspec
       (Expectation, Spec, describe, it, shouldBe)
       
import Exercise_2_2 
       (isSorted)

spec :: Spec
spec = describe "Exercise_2_2" $ do
  it "works" $ do
    isSorted (array (0, 0) []) comp `shouldBe` True
    isSorted (array (0, 0) [(0, 3)]) comp `shouldBe` True
    isSorted (array (0, 1) [(0, 3), (1, 4)]) comp `shouldBe` True
    isSorted (array (0, 1) [(0, 3), (1, 3)]) comp `shouldBe` True
    isSorted (array (0, 1) [(0, 4), (1, 3)]) comp `shouldBe` False
    isSorted (array (0, 3) [(0, 3), (1, 4), (2, 5), (3, 3)]) comp `shouldBe` False    

comp :: Int -> Int -> Bool
comp x y = x <= y