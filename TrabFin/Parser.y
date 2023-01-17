{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    true        { TokenTrue }
    false       { TokenFalse }
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    '/'         { TokenDiv }
    "=="        { TokenEq }
    '!='        { TokenNoEq }
    '>='        { TokenBiEq }
    '<='        { TokenSmEq }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLBracket }
    ')'         { TokenRBracket }
    Bool        { TokenBoolean }
    Number      { TokenNumber }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "=="
%left "!="
%left ">="
%left "<="
%left "&&"
%left "||"

%% 

Exp     : num                        { Num $1 }
        | var                        { Var $1 }
        | false                      { BFalse }
        | true                       { BTrue }
        | Exp '+' Exp                { Add $1 $3 }
        | Exp '-' Exp                { Sub $1 $3 }
        | Exp '/' Exp                { Sub $1 $3 }
        | Exp '*' Exp                { Sub $1 $3 }
        | Exp "&&" Exp               { And $1 $3 }
        | Exp "||" Exp               { Or $1 $3 }
        | if Exp then Exp else Exp   { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
        | Exp Exp                    { App $1 $2 }
        | '(' Exp ')'                { Bracket $2 }
        | Exp "==" Exp               { Eq $1 $3 }
        | Exp "!=" Exp               { NoEq $1 $3 }
        | Exp ">=" Exp               { BiEq $1 $3 }
        | Exp "<=" Exp               { SmEq $1 $3 }


Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
