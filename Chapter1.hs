--In Haskell, a function is a mapping that takes one or more arguments and
--produces a single result, and is defined using an equation that gives a name for
--the function, a name for each of its arguments, and a body that specifies how
--the result can be calculated in terms of the arguments

-- :load chaper1.hs
-- :reload

double x = x + x
add x y = x + y 


{-
double 3
= {applying double }
3 + 3
= {applying + }
6
-}

{-|
double (double 2)
= {applying the inner double }
double (2 + 2)
= {applying + }
double 4
= {applying double }
4 + 4
= {applying + }
8
-}

{-
double (double 2)
= {applying the outer double }
double 2 + double 2
= {applying the first double }
(2 + 2) + double 2
= {applying the first + }
4 + double 2
= {applying double }
4 + (2 + 2)
= {applying the second + }
4 + 4
= {applying + }
8-}

{-
sum [1 . . 5]
= {applying [..] }
sum [1, 2, 3, 4, 5]
= {applying sum }
1 + 2 + 3 + 4 + 5
= {applying + }
15
-}

--sum [1..5]

mysum ([]) = 0
mysum (x:xs) = x + mysum(xs)

{-
sum [1, 2, 3]
= {applying sum }
1 + sum [2, 3]
= {applying sum }
1 + (2 + sum [3])
= {applying sum }
1 + (2 + (3 + sum [ ]))
= {applying sum }
1 + (2 + (3 + 0))
= {applying + }
6
-}


{-
qsort [x ]
= {applying qsort }
qsort [ ] ++ [x ] ++ qsort [ ]
= {applying qsort }
[ ] ++ [x ] ++ [ ]
= {applying ++ }
[x ]
-}


{-

qsort [3, 5, 1, 4, 2]
= {applying qsort }
qsort [1, 2] ++ [3] ++ qsort [5, 4]
= {applying qsort }
(qsort [ ] ++ [1] ++ qsort [2]) ++ [3]
++ (qsort [4] ++ [5] ++ qsort [ ])
= {applying qsort, above property }
([ ] ++ [1] ++ [2]) ++ [3] ++ ([4] ++ [5] ++ [ ])
= {applying ++ }
[1, 2] ++ [3] ++ [4, 5]+
= {applying ++ }
[1, 2, 3, 4, 5]

-}

{-
In turn, where is a keyword that introduces
local definitions, in this case a list smaller that consists of all elements
a from the list xs that are less than or equal to x , together with a list larger
that consists of all elements b from xs that are greater than x
-}

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
	where
		smaller = [a | a<-xs,a<=x]
		larger = [b | b<-xs,b>x]

