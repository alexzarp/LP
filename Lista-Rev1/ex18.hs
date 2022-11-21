-- ????
data Produto = Produto_perecivel Integer String Integer Bool
            |  Produto_nperecivel Integer String String Integer
            deriving Show

nomeProduto :: Produto -> String
nomeProduto produto = case produto of
