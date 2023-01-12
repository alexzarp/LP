avg :: [Float] -> Float
avg lst = sum lst / fromIntegral(length lst)

media :: [Float] -> String
media lst
    | s > 7.0        = "aprovado"
    | s > 3 && s < 7 = "exame especial"
    | s < 3          = "reprovado"
    where
        s = avg lst