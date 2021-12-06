module Exercise_2_3_Spec where
       
import Test.Hspec
       (Expectation, Spec, describe, it, shouldBe)
       
import Exercise_2_3 
       (myCurry)

spec :: Spec
spec = describe "Exercise_2_3" $ do
  it "works" $ do
    add 4 6 `shouldBe` 10
    add3 4 `shouldBe` 7  

add :: Int -> Int -> Int
add = myCurry (\(x, y) -> x + y)

add3 :: Int -> Int
add3 = add 3