solution :: Int
solution = head [a * b * c | a <- [1 .. 998]
                           , b <- [a + 1 .. 999]
                           , c <- [1000 - a - b]
                           , a * a + b * b == c * c]
