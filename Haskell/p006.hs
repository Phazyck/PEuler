-- Solution to http://projecteuler.net/problem=6
solution :: Int
solution = let limit = 100
               sum   = limit*(limit+1) `div` 2
               sumsq = (2*limit+1)*(limit+1)*limit `div` 6
           in sum*sum - sumsq
