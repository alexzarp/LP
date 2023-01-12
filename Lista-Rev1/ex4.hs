precoRetrato :: Integer -> String -> Double
precoRetrato q d
        | q == 1 = 100.00 + s
        | q == 2 = 130.00 + s
        | q == 3 = 150.00 + s
        | q == 4 = 165.00 + s
        | q == 5 = 175.00 + s
        | q == 6 = 180.00 + s
        | q >= 7 = 185.00 + s 
    where
        s = if d == "sabado" || d == "domingo"
            then ((precoRetrato q "*") * 0.2)
            else 0.00