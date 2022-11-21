-- ????
pow :: Integer -> Integer -> Integer
pow x n
    | n == 0 = 1
    | n > 0  = x * pow (x n-1)