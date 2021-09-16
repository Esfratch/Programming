module Definiendo where

data Lista a = Nil | Cons a (Lista a)

data Numero = Zero | Succ Numero

instance (Show a) => Show (Lista a) where
    show Nil = "Vacio"
    show (Cons x xs) = show x ++ " " ++ show xs

cabeza :: Lista a -> a
cabeza Nil = error "lista vacia"
cabeza (Cons x xs) = x

cola :: Lista a -> Lista a
cola Nil = error " lista vacia"
cola (Cons x xs) = xs

instance Show Numero where
    show Zero = "0"
    show (Succ x) = "S(" ++ show x ++ ")"

data Arbol = Cereza | Rama Arbol Arbol
    
instance Show Arbol where
    show Cereza = "o"
    show (Rama l r) = "(" ++ show l ++ ")-(" ++ show r ++ ")"

