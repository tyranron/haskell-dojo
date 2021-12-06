module Exercise_2_4_Spec where
       
import Test.Hspec
       (Expectation, Spec, describe, it, shouldBe)
       
import Exercise_2_4
       (myUncurry)

spec :: Spec
spec = describe "Exercise_2_4" $ do
  it "works" $ do
    add (4, 6) `shouldBe` 10  

add :: (Int, Int) -> Int
add = myUncurry $ \x -> \y -> x + y