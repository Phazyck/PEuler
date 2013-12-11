-- Solution to http://projecteuler.net/problem=1
solution :: Int
solution = let msum n = sum [n,n*2..1000-1] in msum 3 + msum 5 - msum 15
