imcDeepWeb :: Float -> String -> Float
imcDeepWeb h s = y * h - x
        where 
        x = if s == "homem"
            then 50
            else 44.7
        y = if s == "homem"
            then 72.7
            else 62.1