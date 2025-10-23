module Token where

data Token
  = 
  
  -- tipo
  INT
  | DOUBLE
  | STRING
  
  -- const
  | CINT Int
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
  | PRINT
  | ID String
  deriving (Eq, Show)