facA 0 = 1
facA n = n * facA ( n - 1 )

facB n = foldl (*) 1 [ f | f <- [1..n] ]

-- Even better!
facC n = product [1..n]

-- NOTE: There need to be a guard / assertion: factorial for negative numbers is undefined
