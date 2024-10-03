module Ch1.Ex2Spec (spec) where

import Test.Hspec
import Ch1.Utils (doubleEveryOther)

spec :: Spec
spec = do
  describe "doubleEveryOther" $ do
    it "returns an array with doubled integers" $ do
      doubleEveryOther [8, 7, 6, 5] `shouldBe` [16, 7, 12, 5]
