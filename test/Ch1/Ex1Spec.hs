module Ch1.Ex1Spec (spec) where

import Test.Hspec
import Ch1.Utils (toDigits, toDigitsRev)

spec :: Spec
spec = do
  describe "toDigits" $ do
    it "returns empty array when the input is zero" $ do
      toDigits 0 `shouldBe` []
    it "returns empty array when the input is negative" $ do
      toDigits (-100) `shouldBe` []
    it "returns array with digitals when the input is positive" $ do
      toDigits 1234 `shouldBe` [1, 2, 3, 4]
  describe "toDigitsRev" $ do
    it "returns array with digitals when the input is positive" $ do
      toDigitsRev 1234 `shouldBe` [4, 3, 2, 1]
