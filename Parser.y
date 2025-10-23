{
  module Parser where 
  import Token
  import qualified Lex as L
}

%name calculo
%tokentype {Token}
%error {parseError}

%token
-- tipo
'int'    {INT}
'double' {DOUBLE}
'string' {STRING}

-- ops
'+'      {ADD}
'-'      {SUB}
'*'      {MUL}
'/'      {DIV}

'('      {LPAR}
')'      {RPAR}
'{'      {LBRA}
'}'      {RBRA}

'&&'     {AND}
'||'     {OR}
'!'      {NOT}

'if'     {IF}
'else'   {ELSE}
'while'  {WHILE}
'for'    {FOR}

'<'      {RL}
'>'      {RG}
'<='     {RLEQ}
'>='     {RGEQ}
'=='     {REQ}
'/='     {RNEQ}

','      {COMMA}
';'      {SEMI}
'='      {ASSIGN}
'read'   {READ}
'print'  {PRINT}
'id'     {ID}

-- const
CINT     {INT $$}
CDOUBLE  {DOUBLE $$}
LITERAL  {STRING $$}



{
  parseError :: [Token] -> a
  parseError s = error ("Parse error: " ++ show s)
}