module Aritmetica where

sucesor :: Int -> Int
sucesor a = a + 1

suma :: Int -> Int -> Int
suma a 0 = a
suma a n = sucesor (suma a (n-1))


producto :: Int -> Int -> Int
producto a 0 = 0
producto a 1 = a
producto a n = suma a (producto a (n-1))

potencia :: Int -> Int -> Int
potencia a 0 = 1
potencia a 1 = a
potencia a n = producto a (potencia a (n-1))

predecesor :: Int -> Int
predecesor a = a - 1

resta :: Int -> Int -> Int
resta a 0 = a
resta a n = predecesor (resta a (n-1))

signo :: Float -> Int
signo n
    | n < 0 = -1
    | n > 0 = 1
    | otherwise = 0

division :: Int -> Int -> Int
division a n
    | a < n = 0
    | otherwise = sucesor (division (a-n) n)

