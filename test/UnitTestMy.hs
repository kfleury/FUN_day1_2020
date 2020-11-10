--
--
-- hello
--
--

module MySpec where

import Test.Hspec
import My

main :: IO ()
main = hspec $ do
  describe "mySucc" $ do
    it "returns the original number + 1" $
      mySucc 1 `shouldBe` 2
