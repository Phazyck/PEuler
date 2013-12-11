solution :: Int
solution  = maximum [x * y | x <- [999,998..100], y <- [x,x-1..100], palindromic (x*y)]

palindromic :: Int -> Bool
palindromic n = n == (read . reverse . show) n
