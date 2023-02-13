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
    '='         { TokenAssig }
    '<'         { TokenSmall }
    '>'         { TokenBig }
    "=="        { TokenEq }
    '!='        { TokenNoEq }
    '!'         { TokenNot }
    '>='        { TokenSmEq }
    '<='        { TokenBiEq }
    "&&"        { TokenAnd }
    '||'        { TokenOr }
    ','         { TokenComm }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    let         { TokenLet }
    in          { TokenIn }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
--     '['         { TokenLBracket }
--     ']'         { TokenRBracket }
    Bool        { TokenBool }
    Number      { TokenNumber }

%nonassoc if then else
%left '*' '/'
%left '+' '-'
%right '!'
%left "&&" "||"
%left '==' '>' '<' '!=' '>=' '<='

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
        | Exp '||' Exp               { Or $1 $3 }
        | if Exp then Exp else Exp   { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
        | let var '=' Exp in Exp     { Let $2 $4 $6 }
        | Exp Exp                    { App $1 $2 }
        | '(' Exp ')'                { Paren $2 }
        -- | '[' Exp ']'                { Bracket $2 }
        | Exp "==" Exp               { Eq $1 $3 }
        | Exp '!=' Exp               { NoEq $1 $3 }
        | Exp '>=' Exp               { BiEq $1 $3 }
        | Exp '<=' Exp               { SmEq $1 $3 }
        | Exp '>' Exp                { Big $1 $3 }
        | Exp '>' Exp                { Small $1 $3 }
        | '!' Exp                    { Not $2 }
        | Exp '(' Exp ',' Exp ')'    { Pair $0 $2 $4 }


Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}
