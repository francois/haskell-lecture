facA 0 = 1
facA n = n * facA ( n - 1 )

facB n = foldl (*) 1 [ f | f <- [1..n] ]
