module Token where

data Token
    = CINT Int
    | CDOUBLE Double
    | LITERAL String

    | ADD
    | SUB
    | MUL
    | DIV

    | LPAR
    | RPAR
    | LBRA
    | RBRA

    | AND
    | OR
    | NOT

    | IF
    | ELSE
    | WHILE
    | FOR

    | RL -- <
    | RG -- > 
    | RLEQ -- <=
    | RGEQ -- >=
    | REQ -- ==
    | RNEQ -- /=

    | COMMA
    | SEMI
    | ASSIGN
    | READ
    | ID String
    deriving (Eq, Show)