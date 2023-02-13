module Interpreter where

import Lexer

subst :: String -> Expr -> Expr -> Expr 
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (Div e1 e2) = Div (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Not e1) = Not (subst x n e1)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (NoEq e1 e2) = NoEq (subst x n e1) (subst x n e2)
subst x n (SmEq e1 e2) = SmEq (subst x n e1) (subst x n e2)
subst x n (BiEq e1 e2) = BiEq (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
-- subst x n (Bracket e) = Bracket (subst x n e)
subst x n e = e 

isvalue :: Expr -> Bool 
isvalue BTrue = True
isvalue BFalse = True
isvalue (Num _) = True
isvalue (Lam _ _ _) = True 
isvalue _ = False 
isvalue (Pair Empty _ _) = True

numConv :: Expr -> Int
numConv (Num e) = e

step :: Expr -> Maybe Expr 
-------------------------------------------------------------------
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Add (Num n1) e2')
                           _        -> Nothing
step (Add e1 e2) = case step e1 of 
                     Just e1' -> Just (Add e1' e2)
                     _        -> Nothing 
--
step (Sub (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Sub (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Sub (Num n1) e2')
                           _        -> Nothing
step (Sub e1 e2) = case step e1 of 
                     Just e1' -> Just (Sub e1' e2)
                     _        -> Nothing 
--
-- step (Div (Num n1) (Num n2)) = Just (Num (n1 / n2))
-- step (Div (Num n1) e2) = case step e2 of 
--                            Just e2' -> Just (Div (Num n1) e2')
--                            _        -> Nothing
-- step (Div e1 e2) = case step e1 of 
--                      Just e1' -> Just (Div e1' e2)  
--                      _        -> Nothing 
--
step (Mul (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Mul (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Mul (Num n1) e2')
                           _        -> Nothing
step (Mul e1 e2) = case step e1 of 
                     Just e1' -> Just (Mul e1' e2)
                     _        -> Nothing 
-------------------------------------------------------------------
step (And BTrue e2) = Just e2 
step (And BFalse _) = Just BFalse 
step (And e1 e2) = case step e1 of 
                     Just e1' -> Just (And e1' e2)
                     _        -> Nothing                     
--
step (Or BTrue e2) = Just e2 
step (Or BFalse _) = Just BFalse 
step (Or e1 e2) = case step e1 of 
                     Just e1' -> Just (Or e1' e2)
                     _        -> Nothing
-------------------------------------------------------------------
step (If BTrue e1 _) = Just e1 
step (If BFalse _ e2) = Just e2 
step (If e e1 e2) = case step e of 
                      Just e' -> Just (If e' e1 e2)
                      _       -> Nothing
step (App e1@(Lam x t b) e2) | isvalue e2 = Just (subst x e2 b)
                             | otherwise = case step e2 of 
                                             Just e2' -> Just (App e1 e2')
                                             _        -> Nothing
step (App e1 e2) = case step e1 of 
                     Just e1' -> Just (App e1' e2)
                     _        -> Nothing
step (Paren e) = Just e
-- step (Bracket e) = Just e
------------------------------------------------------------------
step (Eq e1 e2) | isvalue e1 && isvalue e2 = if (e1 == e2) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing 
--
step (NoEq e1 e2) | isvalue e1 && isvalue e2 = if ((numConv e1) /= (numConv e2)) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing
--
step (BiEq e1 e2) | isvalue e1 && isvalue e2 = if ((numConv e1) >= (numConv e2)) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing
--
step (SmEq e1 e2) | isvalue e1 && isvalue e2 = if ((numConv e1) <= (numConv e2)) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing
--
step (Not BTrue) = Just BFalse
step (Not BFalse) = Just BTrue
step (Not e1) = case step e1 of 
                     Just e1' -> Just (Not e1')
                     _        -> Nothing
------------------------------------------------------------------
-- step (Let x n b) = Just (subst x n b)
step (Let x e1 e2) | isvalue e1 = Just (subst x e1 e2)
                   | otherwise = case step e1 of 
                                  Just e1' -> Just (Let x e1' e2)
                                  _              -> Nothing
-- subst x n (Let y t1 t2) = Let y t1' t2'
--                             where t1' = subst x n t1
--                                   t2' = subst x n t2
------------------------------------------------------------------

step (Pair e e1 e2) | isvalue e1 && isvalue e2 = case e of
                                First -> Just e1
                                Second -> Just e2
                                Empty -> Just (Pair e e1 e2)
                    | isvalue e1 = case step e2 of
                              Just e2' -> Just (Pair e e1 e2')
                              _        -> Nothing
                    | isvalue e2 = case step e1 of
                              Just e1' -> Just (Pair e e1' e2)
                              _        -> Nothing



------------------------------------------------------------------
step e = Just e 

eval :: Expr -> Expr 
eval e | isvalue e = e 
       | otherwise = case step e of 
                       Just e' -> eval e'
                       _       -> error "Interpreter error!"
