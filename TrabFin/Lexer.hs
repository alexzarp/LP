module Lexer where 

import Data.Char 

data Ty = TBool
        | TNum
        | TFun Ty Ty 
        deriving (Show, Eq)

data Expr = BTrue
          | BFalse
          | Num Int 
          | Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Not Expr
          | Small Expr Expr
          | Big Expr Expr
          | Eq Expr Expr
          | NoEq Expr Expr
          | BiEq Expr Expr
          | SmEq Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | Colon Expr
          | Arrow Expr
          | App Expr Expr 
          | Paren Expr
          | Boll Expr
          deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenSub
           | TokenMul
           | TokenDiv
           | TokenEq
           | TokenBig
           | TokenSmall
           | TokenNoEq
           | TokenBiEq
           | TokenSmEq
           | TokenAnd
           | TokenOr
           | TokenIf 
           | TokenThen
           | TokenElse 
           | TokenVar String 
           | TokenLam
           | TokenLet
           | TokenIn
           | TokenAssig
           | TokenNot
           | TokenColon
           | TokenArrow 
           | TokenLParen
           | TokenRParen
           | TokenBool
           | TokenNumber
           deriving Show 

isToken :: Char -> Bool
isToken c = elem c "->&|="

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMul : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('!':cs) = TokenNot : lexer cs
lexer ('\\':cs) = TokenLam : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKW (c:cs)
             | isToken c = lexSymbol (c:cs)
lexer _ = error "Lexical error: caracter inválido!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest)  -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("if", rest)    -> TokenIf : lexer rest 
             ("then", rest)  -> TokenThen : lexer rest 
             ("else", rest)  -> TokenElse : lexer rest 
             ("Bool", rest)  -> TokenBool : lexer rest 
             ("let", rest)   -> TokenLet : lexer rest
             ("in", rest)    -> TokenIn : lexer rest
             ("Number", rest)-> TokenNumber : lexer rest 
             (var, rest)     -> TokenVar var : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isToken cs of
                   ("==", rest) -> TokenEq    : lexer rest
                   ("&&", rest) -> TokenAnd   : lexer rest
                   (">=", rest) -> TokenBiEq  : lexer rest
                   ("<=", rest) -> TokenSmEq  : lexer rest
                   (">", rest)  -> TokenBig   : lexer rest
                   ("<", rest)  -> TokenSmall : lexer rest
                   ("||", rest) -> TokenOr    : lexer rest
                   ("!=", rest) -> TokenNoEq  : lexer rest
                   ("->", rest) -> TokenArrow : lexer rest
                   ("=", rest) -> TokenAssig : lexer rest
                   _ -> error "Lexical error: símbolo inválido!"