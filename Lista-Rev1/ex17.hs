produto :: [Integer] -> [Integer] -> [Integer]
produto [] [] = []
produto x y = zipWith (*) x y