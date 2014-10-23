--2*3^4 -- 2*(3^4)


--let arr = [10,20,30]
--head arr
--tail arr
--take 2 arr
--drop 2 arr
--sum arr
--product arr
--length arr
--[1,2,3] ++ [3,4]
--reverse

--factorial n = product[1..n]
--average ns = sum ns `div` length ns

{-
load name load script name
:reload reload current script
:edit name edit script name
:edit edit current script
:type expr show type of expr
:? show all commands
:quit quit Hugs
-}


{-
Within a script, each definition must begin in precisely the same column. This
layout rule makes it possible to determine the grouping of definitions from
their indentation. For example, in the script
a = b + c
where
b = 1
c = 2
-}

inc x = x + step + step2
	where 
		step = 1
		step2 = 2

--correct ones
{-
last xs = head (drop (length xs-1) xs)
last xs = xs !! (length xs-1)
last xs = head (reverse xs)
-}

--wrong ones
{-
last xs = reverse xs !! (length xs -1)
last xs = head (drop (length xs) xs)
last xs = reverse (head xs)
last xs = tail (reverse xs)
last xs = drop (length xs -1) xs


init xs = reverse (tail (reverse xs))
init xs = head (drop (length xs -1) xs)
-}

myLast [x] = x 
myLast (x:xs) = myLast xs

myInit [x] = [] 
myInit (x:xs) = x : myInit xs