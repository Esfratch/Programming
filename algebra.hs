module ALGEBRA where
sumaM :: [[Int]] -> [[Int]] -> [[Int]]
sumaM = zipWith (zipWith (+))
