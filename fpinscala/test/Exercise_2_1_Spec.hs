module Exercise_2_1_Spec where

import Test.Hspec
       (Expectation, Spec, describe, it, shouldBe)
       
import Exercise_2_1 
       (fib)

spec :: Spec
spec = describe "Exercise_2_1" $ do
  it "works" $ do
    fib 0 `shouldBe` 0
    fib 1 `shouldBe` 0
    fib 2 `shouldBe` 1
    fib 3 `shouldBe` 1
    fib 4 `shouldBe` 2
    fib 5 `shouldBe` 3
    fib 6 `shouldBe` 5
    fib 7 `shouldBe` 8
