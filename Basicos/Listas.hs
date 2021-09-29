module Listasbasicas where

cabeza :: [a] -> a
cabeza [] = error "empty list"
cabeza (x:_) = x

cola :: [a] -> [a]
cola [] = error "empty"
cola (_:xs) = xs

reversa :: [a] -> [a]
reversa = foldl (flip (:)) []
{-
reversa l = auxRev l [] where
    auxRev [] _         = []
    auxRev [x] ans      = x:ans
    auxRev (x:xs) ans   = auxRev xs (x:ans)
-}

mapear :: (a -> a) -> [a] -> [a]
mapear _ []     = []
mapear f (x:xs) = f x : mapear f xs

plegarI :: (a -> a -> a) -> a -> [a] -> a
plegarI _ e [] = e
plegarI f e (x:xs) = plegarI f (f e x) xs

replica :: Int -> a -> [a]
replica 0 _ = []
replica n e = e : replica (pred n) e

toma :: Int -> [a] -> [a]
toma 0 _ = []
toma _ [] = []
toma n (x:xs) = x : toma (pred n) xs

tirar :: Int -> [a] -> [a]
tirar 0 xs = xs
tirar _ [] = []
tirar n (_:xs) = tirar (pred n) xs

comprimir :: [a] -> [b] -> [(a , b)]
comprimir [] _ = []
comprimir _ [] = []
comprimir (x:xs) (y:ys) = (x , y) : comprimir xs ys

comprimircon :: (a -> b -> c) -> [a] -> [b] -> [c]
comprimircon _ [] _ = []
comprimircon _ _ [] = []
comprimircon f (x:xs) (y:ys) = f x y : comprimircon f xs ys

fib = 0 : 1 : zipWith (+) fib (tail fib)
