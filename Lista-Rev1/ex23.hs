count :: (a -> b) -> [Integer] -> Int
count f [] = 0
count f (x:xs) = 