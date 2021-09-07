sucesor :: Int -> Int
sucesor a = succ a

suma :: Int -> Int -> Int
suma a 0 = a
suma a n = sucesor (suma a (n-1))


multi :: Int -> Int -> Int
multi a 0 = 0
multi a 1 = a
multi a n = suma a (multi a (n-1))

potencia :: Int -> Int -> Int
potencia a 0 = 1
potencia a 1 = a
potencia a n = multi a ((potencia a (n-1)))

factorial :: Int -> Int
factorial 0 = 1
factorial n = multi n (factorial (n-1))
