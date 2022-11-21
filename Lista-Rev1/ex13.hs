-- ???
percentual :: Double -> Double -> Double
percentual x d
    | d == 0 = x
    | d > 0  = percentual (x*2) (d-1)

-- salario :: Double -> Double -> Double -> Double
-- salario sal comec atual
--     | comec == atual = sal
--     | comec <  atual = salario (sal + (sal * perc)) (comec + 1) atual
--     where
--         perc = 0.015 * (atual - comec)