-- Solution to http://projecteuler.net/problem=5
solution :: Int
solution = foldl1 lcm [1..20]
