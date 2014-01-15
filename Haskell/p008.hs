-- Solution to http://projecteuler.net/problem=8
import Data.Char

main :: IO ()
main = interact $ (withBreak . solve . toInts . noBreaks)

solve :: [Int] -> String
solve = show . foldl1 max . nprods 5

withBreak :: String -> String
withBreak s = s ++ ['\n']

noBreaks :: String -> String
noBreaks = filter (/= '\n')

toInts :: String -> [Int]
toInts = map digitToInt

nprod :: Int -> [Int] -> Int
nprod n xs = foldl1 (*) $ take n xs

nprods :: Int -> [Int] -> [Int]
nprods n xs = nps xs []
  where 
    nps xs a
      | length xs < n = a
      | otherwise     = nps (tail xs) ((nprod n xs):a)
