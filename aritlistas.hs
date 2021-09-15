module Aritlist where

factores :: Int -> [Int]
factores n = [x | x <- [1..m], mod n x ==0]
    where m = div n 2

perfectos = [x | x <- [1..], (sum . factores $ x) == x]

abundante x = (sum . factores $ x) == x
abundantes = [x | x <- [1..], abundante x]

abundantesMenores n = [x | x <- [1..n], abundante x]
-- abundantesMen n = take n abundates

abundanteimpar = head [x | x <- abundantes, odd x]

pares n (x0 , y0) = [(x , y) | x <- rangox, y <- rangoy, x^2 + y^2 <= n^2]
    where rangox = [(-n + x0)..(n + x0)]
          rangoy = [(-n + y0)..(n + y0)]

mediana :: Fractional a => [a] -> a
mediana [] = error "lista vacia"
mediana xs
    | odd l = xs !! m
    | otherwise = (xs!!m) + (xs!!(m-1))/2
        where l = length xs
              m = div 1 2
