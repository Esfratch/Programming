module Listasbasicas where

cabeza :: [a] -> a
cabeza [] = error "empty list"
cabeza (x:_) = x

cola :: [a] -> [a]
cola [] = error "empty"
cola (_:xs) = xs

reversa :: [a] -> [a]
reversa l = auxRev l [] where
    auxRev [] _         = []
    auxRev [x] ans      = x:ans
    auxRev (x:xs) ans   = auxRev xs (x:ans)
        
