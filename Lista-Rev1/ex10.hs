eleitoral :: Int -> String
eleitoral y
        | y < 16             = "nao eleitor"
        | y >= 18 && y <= 65 = "eleitor obrigatório"
        | y >= 16 || y < 65  = "eleitor facultativo"