module Exercise_2_5_Spec where
       
import Test.Hspec
       (Expectation, Spec, describe, it, shouldBe)
       
import Exercise_2_5
       (compose)

spec :: Spec
spec = describe "Exercise_2_5" $ do
  it "works" $ do
    add8 2 `shouldBe` 10  

add8 :: Int -> Int
add8 = compose (\x -> x + 3) (\y -> y + 5)