fatorial :: Integer -> Integer
fatorial n
        | n <= 0 = 1
        | n > 0  = n * fatorial (n-2)