media :: Float -> Float -> Float -> Char
media t a e
    | s >= 8.0 = 'A'
    | s >= 7.0 = 'B'
    | s >= 6.0 = 'C'
    | s >= 5.0 = 'D'
    | s >= 0.0 = 'E'
    where
        s = ((t * 2) + (a * 3) + (e * 5) / (2 + 3 + 5))