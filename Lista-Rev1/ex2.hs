triangulo :: Int -> Int -> Int -> IO Bool
triangulo x y z = if x + y > z && x + z > y && z + y > x
                    then return True
                    else return False