module Funciones where
import Data.Char (digitToInt)

funnyfunction1r :: Int -> Int
funnyfunction1r n
    | n < 1 = 0
    | odd n = n^2 + f (n-2)
    | otherwise = f (pred n)
    where f = funnyfunction1r

funnyfunction1C n = sum [x^2 | x <- [1,3..n]]
funnyfunction1c n = sum.map (^2) $ [1,3..n]

sumardig :: Int -> Int
sumardig n
    | n < 0 = sumardig . abs $ n
    | n < 10 = n
    | otherwise = sumardig m
    where m = sum [digitToInt i | i <- show n]

divisible9 :: Int -> Bool
divisible9 n = sumardig n == 9
