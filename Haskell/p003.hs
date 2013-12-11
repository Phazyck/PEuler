-- Solution to http://projecteuler.net/problem=3
solution :: Int
solution = maximum $ factors 600851475143

factors :: Int -> [Int]
factors n = 
  aux n primes
  where
    aux n (p:ps) = if n == 1 then [] else if n `mod` p == 0 then p:(aux (n `div` p) ps) else aux n ps

primes :: [Int]
primes =
  aux 2 [3..]
  where 
    aux p (x:xs) = p:(aux x (filter (\x -> x `mod` p /= 0) xs))
