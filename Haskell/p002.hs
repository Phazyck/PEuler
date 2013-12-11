-- Solution to http://projecteuler.net/problem=2
solution :: Int
solution = sum $ takeWhile (\f -> f <= 4000000) evenFibs

evenFibs :: [Int]
evenFibs = 
  aux 0 1
  where 
    aux a b = a : (aux d e)
      where 
        c = a + b
        d = b + c
        e = c + d 
