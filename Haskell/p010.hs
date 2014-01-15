-- Solution to http://projecteuler.net/problem=7
solution :: Int
solution = sum $ filter (isPrime) $ 2:[3,5..2000000]

isPrime :: Int -> Bool
isPrime n 
    | n == 1         = False
    | n < 4          = True
    | n `mod` 2 == 0 = False
    | n < 9          = True
    | n `mod` 3 == 0 = False
    | otherwise      = p 5
        where
          r = floor . sqrt . fromIntegral $ n 
          p f 
            | f > r               = True
            |  n `mod`  f    == 0     
            || n `mod` (f+2) == 0 = False
            | otherwise           = p $ f + 6
