module Definiendo where

data Lista a = Nil | Cons a (Lista a)

data Numero = Zero | Succ Numero

cabeza :: Lista a -> a
cabeza Nil = error "lista vacia"
cabeza (Cons x xs) = x

cola :: Lista a -> Lista a
cola Nil = error " lista vacia"
cola (Cons x xs) = xs


