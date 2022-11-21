primeiros :: [Integer] -> [Integer]
primeiros [] = []
primeiros lst = reverse(tail(reverse lst))