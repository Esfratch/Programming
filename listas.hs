module Listasbasicas where

cabeza :: [a] -> a
cabeza [] = error "empty list"
cabeza (x:_) = x

cola :: [a] -> [a]
cola [] = error "empty"
cola (_:xs) = xs

reversa :: [a] -> [a]
reversa = foldl (\l x -> x:l) []
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
