module Talvezarit where

data Talvez a = Nada | Un a
instance (Show a) => Show (Talvez a) where
    show Nada = "Nada"
    show (Un a) = "Ink ribbon " ++ show a

qot :: Int -> Int -> Talvez Int
qot 0 _ = Nada
qot a b = Un (quot a b)

resta :: Int -> Int -> Talvez Int
resta a b 
    |a < b = Nada
    | otherwise = Un (a-b)

mult :: Int -> Int -> Talvez Int
mult a b = Un (a * b)

suma :: Int -> Int -> Talvez Int
suma a b = Un (a + b)

(>>>) :: Talvez Int -> (Int -> Talvez Int) -> Talvez Int
Nada >>> _ = Nada
(Un x) >>> f = f x
