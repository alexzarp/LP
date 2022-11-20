palindromo :: String -> Bool
palindromo str = if reverse str == str
                then True
                else False