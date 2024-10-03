module Ch1.Ex4Spec (spec) where

import Test.Hspec
import Ch1.Utils (isValid)

spec :: Spec
spec = do
  describe "isValid" $ do
    it "returns true when the number is valid" $ do
      isValid 4012888888881881 `shouldBe` True
    it "returns false when the number is invalid" $ do
      isValid 4012888888881882 `shouldBe` False
