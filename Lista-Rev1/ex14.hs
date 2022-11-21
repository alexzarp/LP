ultimo :: [Int] -> Int
ultimo [] = 0
ultimo lst = head (reverse lst)