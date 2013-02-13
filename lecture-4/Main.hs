isPal :: (Eq a) => [a] -> Bool
isPal xs = xs == (reverse xs)

myhead :: [a] -> a
myhead [] = undefined
myhead (x:xs) = x
