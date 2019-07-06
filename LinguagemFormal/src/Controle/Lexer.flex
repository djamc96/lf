package Controle;

import static Controle.Token.*;
%%
%class Lexer
%type Token
L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r]

%{
public String lexeme;
%}
%%
{WHITE} {/*Ignore*/}

/* Pular linha */
( "\n" )    {lexeme = yytext(); return LINHA;}

/**/

/*Delimitador Esquedo*/
( "(" )    {lexeme = yytext(); return DELIMESQ;}

/*Delimitador direito*/
( ")" )    {lexeme = yytext(); return DELIMDIR;}

/*Função*/
("defun")  {lexeme = yytext(); return FUNCAO;}

/*Nome da função*/
{L}({L}|{D})* {lexeme=yytext(); return ID_FUNCAO;}

/*Teste condicional*/
("if")  {lexeme = yytext(); return TESTE_COND;}

/*Operadores Unitarios*/
("*" | "+" | "-" | "/") {lexeme = yytext(); return OPE_UNIT;}

/*Operadores Condicionais*/
("gt" | "lt" | "geq" | "leq" | "eq" | "neq" | "not" | "and" | "or") {lexeme = yytext(); return OPE_COND;}

/*Numero*/
{D}{D}* {lexeme = yytext(); return NUMERO;}

/*Erro de sintaxe*/
. {return ERROR;}