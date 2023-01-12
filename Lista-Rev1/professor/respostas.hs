
-- Ex1
salary :: Double -> Double
salary s = s * 1.1 - s * 0.07

-- Ex 2
is_triangle :: Int -> Int -> Int -> Bool
is_triangle n1 n2 n3 | n1 + n2 > n3 = True
                     | n1 + n3 > n2 = True
                     | n2 + n3 > n1 = True
                     | otherwise = False

-- Ex 3
student_grade :: Double -> Double -> Double -> Double
student_grade lab av ex = lab * 0.2 + av * 0.3 + ex * 0.5

student_result :: Double -> Double -> Double -> Char
student_result n1 n2 n3 | grade >= 8 && grade <= 10 = 'A'
                        | grade >= 7 = 'B'
                        | grade >= 6 = 'C'
                        | grade >= 5 = 'D'
                        | otherwise = 'E'
  where grade = student_grade n1 n2 n3

-- Ex 4

photo_price_amount :: Int -> Double
photo_price_amount 1 = 100
photo_price_amount 2 = 130
photo_price_amount 3 = 150
photo_price_amount 4 = 165
photo_price_amount 5 = 175
photo_price_amount 6 = 180
photo_price_amount _ = 185

photo_price :: Int -> String -> Double
photo_price n day 
    | day == "sabado" || day == "domingo" = photo_price_amount n * 1.2
    | otherwise = photo_price_amount n

-- Ex 5
mult :: Float -> Float -> Float -> Float
mult n1 n2 n3 = n1 * n2 * n3

-- Ex 6
ideal_weight :: Double -> String -> Double
ideal_weight h s | s == "M" = 72.7 * h - 58
                 | otherwise = 62.1 * h - 44.7

-- Ex 7
student_approval :: Double -> Double -> Double -> (Double, String)
student_approval n1 n2 n3 | grade < 3 = (grade, "reprovado")
                          | grade >= 7 = (grade, "aprovado")
                          | otherwise = (grade, "exame especial")
    where grade = (n1 + n2 + n3) / 3

-- Ex 8
palindrome :: String -> Bool
palindrome s = s == reverse s 

-- Ex 9 
credit_line :: Double -> Double -> Bool
credit_line s v = s * 0.3 >= v

-- Ex 10
voter_class :: Int -> String
voter_class i | i < 16 = "Não eleitor"
              | i >= 18 && i < 65 = "Eleitor obrigatório"
              | otherwise = "Eleitor facultativo"

-- Ex 11
double_fat :: Integer -> Integer
double_fat 0 = 1
double_fat 1 = 1
double_fat n = n * double_fat (n - 2)

-- Ex 12
power :: Integer -> Integer -> Integer
power x 0 = 1
power x e = x * (power x (e - 1))

-- Ex 13 
career :: Double -> Double -> Int -> Int -> Double
career s a ac aa = if (ac == aa) then
                     s
                   else 
                     career (sal_inc s a) (2 * a) (ac + 1) aa
    where 
        sal_inc s p = s + s * p/100

-- Ex 14
get_last :: [a] -> a 
get_last l = head (reverse l)

-- Ex 15
get_firsts :: [a] -> [a]
get_firsts l = reverse (tail (reverse l))

-- Ex 16
calc_sum :: Num a => [a] -> a 
calc_sum [] = 0
calc_sum (x:xs) = x + calc_sum xs 

-- Ex 17
prod_elem :: Num a => [a] -> [a] -> [a]
prod_elem [] [] = []
prod_elem (x:xs) (y:ys) = (x * y) : prod_elem xs ys

-- Ex 18 e 19

data FormaCom = Un | Peso
              deriving Show

data Produto = Perecivel Int String Int Bool FormaCom
             | NaoPerecivel Int String String Int FormaCom
             deriving Show

prod1 = Perecivel 1 "Carne Moída" 2022 True Un
prod2 = NaoPerecivel 2 "Sal" "Sal Marinho" 2021 Peso

-- Ex 20
is_valid :: Produto -> Int -> Bool
is_valid (Perecivel _ _ av _ _) aa = av >= aa 
is_valid _ _ = True

-- Ex 21
my_and :: Bool -> Bool -> Bool
my_and True True = True
my_and _ _ = False

my_or :: Bool -> Bool -> Bool
my_or False False = False
my_or _ _ = True

-- Ex 22
calc_list :: Num a => [a] -> a 
calc_list [] = 0
calc_list [x] = x 
calc_list (x:xs) = x + head xs

-- Ex 23 
count_list :: [a] -> Int
count_list l = foldl (\x y -> x + 1) 0 l 

-- Ex 24 
type Contact = (String, String)

contacts :: [Contact]
contacts = [("Joao", "1111-1111"), ("Pedro", "2222-2222"), ("Maria", "3333-3333")]

filter_contacts_by_name :: [Contact] -> String -> [Contact]
filter_contacts_by_name l n = filter (\dados -> fst dados == n) l

