media :: Float -> Float -> Float -> String
media a b c
    | s > 7.0        = "aprovado"
    | s > 3 && s < 7 = "exame especial"
    | s < 3          = "reprovado"
    where
        s = a + b + c / 3