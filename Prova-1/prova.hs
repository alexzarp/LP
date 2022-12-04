
q1 = case not (1 /= 2) of 
       True -> "inicio"
       False -> "fim"

q2 = if 2 == 2 then "abc" else ['d', 'e', 'f']

q3 = let pot_dois x | x <= 0 = 1
                    | otherwise = 2 * pot_dois (x - 1)
        in pot_dois 7

q4 = filter (not . odd . (+3)) [5,6,7,8,9]

q5 = sum (map (logBase 4) [16, 256, 4096]) 

type Matricula = Integer
type Nome = String
type Notas = (Double, Double, Double)
type Estudante = (Matricula, Nome, Notas)
type Turma = [Estudante]

exemplo :: Turma 
exemplo = [ (1, "Pedro", (5.0, 7.5, 4.5))
          , (2, "Maria", (9.0, 8.0, 10.0))
          , (3, "Joao", (3.0, 7.0, 4.5))
          , (4, "Paulo", (7.0, 5.0, 9.5))
          , (5, "Ana", (8.5, 8.0, 9.0))
          ]

mediaEstudante :: Notas -> Double 
mediaEstudante (n1,n2,n3) = (n1 + n2 + n3) / 3

mediaAlunoTurma :: Turma -> [Double]
mediaAlunoTurma t = map (\(_,_,n) -> mediaEstudante n) t

mediaTurma :: Turma -> Double
mediaTurma t = (sum (map (\(_,_,n) -> mediaEstudante n) t)) / fromIntegral (length t)

obtemAprovados :: Turma -> Turma
obtemAprovados t = filter (\(_,_,n) -> (mediaEstudante n) >= 6.0) t

maiorMedia :: Turma -> Turma -> Turma 
maiorMedia t1 t2 = if mediaTurma t1 > mediaTurma t2 
                     then t1
                     else t2

mediaEstudanteInd :: Turma -> [(Nome,Double)]
mediaEstudanteInd t = map (\(_,nome,notas) -> (nome,mediaEstudante notas)) t
