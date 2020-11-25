--
-- EPITECH PROJECT, 2020
-- FUN_day1_2020
-- File description:
-- My.hs
--
module My where

{-    STEP 1    -}

--
-- A function which takes one Int as argument and returns its successor.
--
mySucc :: Int -> Int
mySucc = (+1)

--
-- A function which takes one Int as argument and returns True if it’s negative or False otherwise.
--
myIsNeg :: Int -> Bool
myIsNeg nbr
  | nbr < 0 = True
  | otherwise = False

--
-- A function which takes one Int as argument and returns it’s absolute value.
--
myAbs :: Int -> Int
myAbs abs
  | abs < 0 = -abs
  | otherwise = abs

--
-- A function which takes two Ints as arguments and returns the minimum of the two.
--
myMin :: Int -> Int -> Int
myMin x y
  | x <= y = x
  | y < x = y

--
-- A function which takes two Ints as arguments and returns the maximum of the two.
--
myMax :: Int -> Int -> Int
myMax x y
  | x >= y = x
  | y > x = y

{-    STEP 2    -}

--
-- A function which takes two arguments and a return a tuple of those.
--
myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

--
-- A function which takes three arguments and a return a tuple of those.
--
myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

--
-- A function which takes a tuple as argument and returns its first value.
--
myFst :: (a, b) -> a
myFst (a, _) = a

--
-- A function which takes a tuple as argument and returns its second value.
--
mySnd :: (a, b) -> b
mySnd (_, b) = b

--
-- A function which takes a tuple as argument and returns a new tuple, with it’s two values swaped.
--
mySwap :: (a, b) -> (b, a)
mySwap (a, b) = (b, a)

{-    STEP 3    -}

--
-- A function which takes a list as argument and returns its first value. If the list is empty,
-- an exception is raised with the function error.
--
myHead :: [a] -> a
myHead [] = error "Can't call head on an empty list, dummy!"  
myHead (x:_) = x

--
-- A function which takes a list as argument and returns a new list without its first element.
-- If the list is empty, an exception is raised with the function error.
--
myTail :: [a] -> [a]
myTail [] = error "Can't call tail on an empty list, dummy!"  
myTail (_:xs) = xs

--
-- A function which takes a list as argument and returns the number of elements in the list.
--

{-    V1
myLength :: [a] -> Int
myLength xs = sum[1 | _ <- xs]
-}

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

--
-- A function which takes a list and an Int (n) as argument and returns the element at index n in the list,
-- or an error if the index is too large or negative.
--
myNth :: [a] -> Int -> a
myNth a i
  | i < 0 = error "The index is negative, give a positive number"
  | myLength a < i = error "The index is larger than the length of the list, give a minus number"
myNth (x:_) 0 = x
myNth (_:xs) i = myNth xs (i - 1)

--
-- A function which takes an Int (n) and a list and returns a list with the Nth first elements of the list.
-- If the list is too short the whole list is returned.
--
myTake :: Int -> [a] -> [a]
myTake i _
  | i < 0 = error "The index is negative, give a positive number"  
myTake 0 _ = []
myTake _ [x] = [x]
myTake i (x:xs) = x:myTake (i - 1) xs

--
-- A function which takes an Int (n) and a list and returns a list without the N first elements.
-- If the list is too short an empty list is returned.
--
myDrop :: Int -> [a] -> [a]
myDrop i _
  | i < 0 = error "The index is negative, give a positive number"  
myDrop 0 a = a
myDrop _ [] = []
myDrop i (_:xs) = myDrop (i - 1) xs

--
-- A function which takes two lists and returns a new list with the second list appened to the first one.
--
myAppend :: [a] -> [a] -> [a]
myAppend a [] = a
myAppend [] b = b
myAppend (x:xs) b = x:myAppend xs b

--
-- A function which takes a list and returns a list with all its elements in reverse order.
--
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs++[x]

--
-- A function which takes a list and returns a list with all its elements except the last one,
-- or an error if the list is empty.
--
myInit :: [a] -> [a]
myInit [] = error "The list is empty"
myInit [x] = []
myInit (x:xs) = x:myInit xs

--
-- A function which takes a list and returns its last element, or an error if the list is empty.
--
myLast :: [a] -> a
myLast [] = error "The list is empty"
myLast [x] = x
myLast (x:xs) = myLast xs

--
-- A function which takes two lists as arguments, and returns a list of tuples.
-- The list produced is as long as the shortest list.
--
myZip :: [a] -> [b] -> [(a, b)]
myZip [] [] = []
myZip xs [] = []
myZip [] xs = []
myZip (x:xs) (y:ys) = (x, y):myZip xs ys

--
-- A function which takes a list of tuples, and return a tuple of lists.
--
myUnzip :: [(a, b)] -> ([a], [b])
myUnzip [] = ([], [])
myUnzip ((a, b):xs) = (a:a', b:b')
  where (a', b') = myUnzip xs

{-    STEP 4    -}

--
-- A function which takes a function and a list, and apply this function to every element of the list.
--
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x:myMap f xs

--
-- A function which takes a predicate (a function returning a boolean value) and a list,
-- and returns a list of all the elements for which the predicate has returned True.
--
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (x:xs)
  | f x = x:rest
  | otherwise = rest
  where rest = myFilter f xs

--
-- A function which takes a function, a starting value and a list as argument.
-- It takes the second argument and the first item of the list and applies the function to them, then feeds the
-- function with this result and the second argument and so on.
--
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ b [] = b
myFoldl f b (x:xs) = myFoldl f (f b x) xs

--
-- Like myFoldl, but from right to left.
--
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ b [] = b
myFoldr f b xs = myFoldr f (f (myLast xs) b) $ myInit xs

--
-- A function which takes a predicate and a list as argument, and returns a tuple of lists, with in the first list the
-- elements for which the predicate returns true, and in the second list the other elements.
--
mySpan :: (a -> Bool) -> [a] -> ([a], [a])
mySpan _ [] = ([], [])
mySpan f list@(x:xs)
  | f x = (x:a, a')
  | otherwise = ([], list)
  where (a, a') = mySpan f xs

--
-- A function which takes a predicate and a list as arguments, and returns the list sorted according to the predicate.
--
myQuickSort :: (a -> a -> Bool) -> [a] -> [a]
myQuickSort _ [] = []
myQuickSort f (x:xs) = myAppend endL $ myAppend [x] endR
  where
    onRight = [ l | l <- xs, f x l]
    onLeft = [ l | l <- xs, not(f x l)]
    endR = myQuickSort f onRight
    endL = myQuickSort f onLeft