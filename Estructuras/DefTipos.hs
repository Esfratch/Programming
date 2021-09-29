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
    
instance Show a => Show (Arbol a) where
    show (Hoja a) = show a
    show (Rama l r) = "(" ++ show l ++ ")-(" ++ show r ++ ")"

data Arbol a = Hoja a | Rama (Arbol a) (Arbol a)

treetolist :: Arbol a -> Lista a
treetolist (Hoja x) = Cons x Nil
treetolist (Rama l r) = treetolist l >=< treetolist r

(>=<) :: Lista a -> Lista a -> Lista a
Nil >=< x = x
(Cons x xs) >=< ys = Cons x (xs >=< ys)

