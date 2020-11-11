--
-- EPITECH PROJECT, 2020
-- FUN_day1_2020
-- File description:
-- UnitTestMy.hs
--
module UnitTest where

import Test.HUnit
import My

mySuccTest :: Test
mySuccTest = TestCase (assertEqual name expected out)
  where
    name = "mySucc Test for 3"
    expected = succ 3
    out = mySucc 3

myIsNegTest :: Test
myIsNegTest = TestCase (assertEqual name expected out)
  where
    name = "myIsNegTest Test for -1"
    expected = True
    out = myIsNeg $ -1

myIsNegTest2 :: Test
myIsNegTest2 = TestCase (assertEqual name expected out)
  where
    name = "myIsNegTest2 Test for 1"
    expected = False
    out = myIsNeg 1

myAbsTest :: Test
myAbsTest = TestCase (assertEqual name expected out)
  where
    name = "myAbs Test for 3"
    expected = abs 3
    out = myAbs 3

myAbsTest2 :: Test
myAbsTest2 = TestCase (assertEqual name expected out)
  where
    name = "myAbs Test for -3"
    expected = abs $ -3
    out = myAbs $ -3

myMinTest :: Test
myMinTest = TestCase (assertEqual name expected out)
  where
    name = "myMin Test for 3 5"
    expected = min 3 5
    out = myMin 3 5

myMinTest2 :: Test
myMinTest2 = TestCase (assertEqual name expected out)
  where
    name = "myMin Test for 5 3"
    expected = min 5 3
    out = myMin 5 3

myMaxTest :: Test
myMaxTest = TestCase (assertEqual name expected out)
  where
    name = "myMax Test for 3 5"
    expected = max 3 5
    out = myMax 3 5

myMaxTest2 :: Test
myMaxTest2 = TestCase (assertEqual name expected out)
  where
    name = "myMax Test for 5 3"
    expected = max 5 3
    out = myMax 5 3

myTupleTest :: Test
myTupleTest = TestCase (assertEqual name expected out)
  where
    name = "myTuple Test for 3 5"
    expected = (3, 5)
    out = myTuple 3 5

myTrupleTest :: Test
myTrupleTest = TestCase (assertEqual name expected out)
  where
    name = "myTruple Test for 3 5 6"
    expected = (3, 5, 6)
    out = myTruple 3 5 6

myFstTest :: Test
myFstTest = TestCase (assertEqual name expected out)
  where
    name = "myFst Test for (3, 5)"
    expected = fst (3, 5)
    out = myFst (3, 5)

mySndTest :: Test
mySndTest = TestCase (assertEqual name expected out)
  where
    name = "mySnd Test for (3, 5)"
    expected = snd (3, 5)
    out = mySnd (3, 5)

mySwapTest :: Test
mySwapTest = TestCase (assertEqual name expected out)
  where
    name = "mySwap Test for (3, 5)"
    expected = (5, 3)
    out = mySwap (3, 5)

myHeadTest :: Test
myHeadTest = TestCase (assertEqual name expected out)
  where
    name = "myHead Test for [3..5]"
    expected = head [3..5]
    out = myHead [3..5]

myTailTest :: Test
myTailTest = TestCase (assertEqual name expected out)
  where
    name = "myTail Test for [3..5]"
    expected = tail [3..5]
    out = myTail [3..5]

myLengthTest :: Test
myLengthTest = TestCase (assertEqual name expected out)
  where
    name = "myLength Test for [3..5]"
    expected = length [3..5]
    out = myLength [3..5]

myLengthTest2 :: Test
myLengthTest2 = TestCase (assertEqual name expected out)
  where
    name = "myLength Test for []"
    expected = length []
    out = myLength []

myNthTest :: Test
myNthTest = TestCase (assertEqual name expected out)
  where
    name = "myNth Test for [3..5] 2"
    expected = [3..5] !! 2
    out = myNth [3..5] 2

{-
myNthTest2 :: Test
myNthTest2 = TestCase (assertRaises name expected $ evaluate out)
  where
    name = "myNth Test for [3..5] -1"
    expected = (ErrorCall "The index is negative, give a positive number")
    out = myNth [3..5] $ -1
-}

{-
myNthTest3 :: Test
myNthTest3 = TestCase (assertEqual name expected out)
  where
    name = "myNth Test for [3..5] 22"
    expected = [3..5] !! 22
    out = myNth [3..5] 22
-}

myTakeTest :: Test
myTakeTest = TestCase (assertEqual name expected out)
  where
    name = "myTake Test for 3 [1..5]"
    expected = take 3 [1..5]
    out = myTake 3 [1..5]

{-
myTakeTest2 :: Test
myTakeTest2 = TestCase (assertEqual name expected out)
  where
    name = "myTake Test for (-3) [1..5]"
    expected = take (-3) [1..5]
    out = myTake (-3) [1..5]
-}

myDropTest :: Test
myDropTest = TestCase (assertEqual name expected out)
  where
    name = "myDrop Test for 3 [1..5]"
    expected = drop 3 [1..5]
    out = myDrop 3 [1..5]

{-
myDropTest2 :: Test
myDropTest2 = TestCase (assertEqual name expected out)
  where
    name = "myDrop Test for (-3) [1..5]"
    expected = drop (-3) [1..5]
    out = myDrop (-3) [1..5]
-}

myAppendTest :: Test
myAppendTest = TestCase (assertEqual name expected out)
  where
    name = "myAppend Test for [2] [3]"
    expected = [2] ++ [3]
    out = myAppend [2] [3]

myAppendTest2 :: Test
myAppendTest2 = TestCase (assertEqual name expected out)
  where
    name = "myAppend Test for [] [3]"
    expected = [] ++ [3]
    out = myAppend [] [3]

myAppendTest3 :: Test
myAppendTest3 = TestCase (assertEqual name expected out)
  where
    name = "myAppend Test for [2] []"
    expected = [2] ++ []
    out = myAppend [2] []

myReverseTest :: Test
myReverseTest = TestCase (assertEqual name expected out)
  where
    name = "myReverse Test for [1..5]"
    expected = reverse [1..5]
    out = myReverse [1..5]

myInitTest :: Test
myInitTest = TestCase (assertEqual name expected out)
  where
    name = "myInit Test for [1..5]"
    expected = init [1..5]
    out = myInit [1..5]

myLastTest :: Test
myLastTest = TestCase (assertEqual name expected out)
  where
    name = "myLast Test for [1..5]"
    expected = last [1..5]
    out = myLast [1..5]

myZipTest :: Test
myZipTest = TestCase (assertEqual name expected out)
  where
    name = "myZip Test for [1..5] [6..10]"
    expected = zip [1..5] [6..10]
    out = myZip [1..5] [6..10]

myUnzipTest :: Test
myUnzipTest = TestCase (assertEqual name expected out)
  where
    name = "myUnzip Test for [(1, 2), (3, 4)]"
    expected = unzip [(1, 2), (3, 4)]
    out = myUnzip [(1, 2), (3, 4)]

myMapTest :: Test
myMapTest = TestCase (assertEqual name expected out)
  where
    name = "myMap Test for succ [1..5]"
    expected = map succ [1..5]
    out = myMap succ [1..5]

myMapTest2 :: Test
myMapTest2 = TestCase (assertEqual name expected out)
  where
    name = "myMap Test for succ [1]"
    expected = map succ [1]
    out = myMap succ [1]

myFilterTest :: Test
myFilterTest = TestCase (assertEqual name expected out)
  where
    name = "myFilter Test for even [1..5]"
    expected = filter even [1..5]
    out = myFilter even [1..5]

myFilterTest2 :: Test
myFilterTest2 = TestCase (assertEqual name expected out)
  where
    name = "myFilter Test for even []"
    expected = filter even []
    out = myFilter even []

myFilterTest3 :: Test
myFilterTest3 = TestCase (assertEqual name expected out)
  where
    name = "myFilter Test for even [1, 3, 5]"
    expected = filter even [1, 3, 5]
    out = myFilter even [1, 3, 5]

myFoldlTest :: Test
myFoldlTest = TestCase (assertEqual name expected out)
  where
    name = "myFoldl Test for (++) 'foo' ['bar', 'baz']"
    expected = foldl (++) "foo" ["bar", "baz"]
    out = myFoldl myAppend "foo" ["bar", "baz"]

myFoldlTest2 :: Test
myFoldlTest2 = TestCase (assertEqual name expected out)
  where
    name = "myFoldl Test for (++) 'foo' []"
    expected = foldl (++) "foo" []
    out = myFoldl myAppend "foo" []

myFoldrTest :: Test
myFoldrTest = TestCase (assertEqual name expected out)
  where
    name = "myFoldr Test for (++) 'foo' ['bar', 'baz']"
    expected = foldr (++) "foo" ["bar", "baz"]
    out = myFoldr (myAppend) "foo" ["bar", "baz"]

myFoldrTest2 :: Test
myFoldrTest2 = TestCase (assertEqual name expected out)
  where
    name = "myFoldr Test for (++) 'foo' []"
    expected = foldr (++) "foo" []
    out = myFoldr myAppend "foo" []

mySpanTest :: Test
mySpanTest = TestCase (assertEqual name expected out)
  where
    name = "mySpan Test for even [1..5]"
    expected = span even [1..5]
    out = mySpan even [1..5]

mySpanTest2 :: Test
mySpanTest2 = TestCase (assertEqual name expected out)
  where
    name = "mySpan Test for even []"
    expected = span even []
    out = mySpan even []

myQuickSortTest :: Test
myQuickSortTest = TestCase (assertEqual name expected out)
  where
    name = "myQuickSort Test for (<) [9,1,8,2,7,3,6,4,5]"
    expected = [1..9]
    out = myQuickSort (<) [9,1,8,2,7,3,6,4,5]

myQuickSortTest2 :: Test
myQuickSortTest2 = TestCase (assertEqual name expected out)
  where
    name = "myQuickSort Test for (<) [1]"
    expected = [1]
    out = myQuickSort (<) [1]

testsStep1 = TestList [mySuccTest, myIsNegTest, myIsNegTest2, myAbsTest, myAbsTest2,
                  myMinTest, myMinTest2, myMaxTest, myMaxTest2]
testsStep2 = TestList [myTupleTest, myTrupleTest, myFstTest, mySndTest, mySwapTest]
testsStep3 = TestList [myHeadTest, myTailTest, myLengthTest, myLengthTest2, myNthTest{-, myNthTest2-}{-, myNthTest3-},
                  myTakeTest{-, myTakeTest2-}, myDropTest{-, myDropTest2-}, myAppendTest,
                  myAppendTest2, myAppendTest3, myReverseTest, myInitTest,
                  myLastTest, myZipTest, myUnzipTest]
testsStep4 = TestList [myMapTest, myMapTest2, myFilterTest,
                  myFilterTest2, myFilterTest3, myFoldlTest, myFoldlTest2,
                  myFoldrTest, myFoldrTest2, mySpanTest, mySpanTest2,
                  myQuickSortTest, myQuickSortTest2]
