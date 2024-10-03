module Ch1.Ex3Spec (spec) where

import Test.Hspec
import Ch1.Utils (sumDigits)

spec :: Spec
spec = do
  describe "sumDigits" $ do
    it "returns sum of array of integer" $ do
      sumDigits [8, 7, 6, 15] `shouldBe` 27
