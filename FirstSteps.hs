{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

double x = x + x

--If we want to quad we can just double twice 
quadruple x = double (double x) --brackets needed because if we didn't use them is it would interpret the first double function as having two inpouts double and x

factorial n = product [1..n] -- factorial is simply the rpdouct from 1 up to 10
average ns = sum ns `div` length ns --Average takes a list of number ns it will then take the length and sums of list
-- it will then div both of these to find the avg

q = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

--Show how we can do the function last using other functions 

last xs = xs !! (length xs -1) 

--or

last2 xs = xs reverse !! 1

--or 

last3 xs = head (reverse xs)

init xs = take (length xs - 1) xs

--or
init xs = reverse (tail (reverse xs))

add :: Int -> (Int -> Int)
add x y = x + y

second :: [a] -> a
second xs = head (tail xs)