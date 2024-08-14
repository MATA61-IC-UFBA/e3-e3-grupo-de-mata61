%option noyywrap yylineno
%{

#include "token.h"

%}

%%

[ \t\n\r]+            {  }

"//".*                {  }

"array"               { return ARRAY; }
"boolean"             { return BOOLEAN; }
"char"                { return CHARLIT; }
"else"                { return ELSE; }
"false"               { return FALSE; }
"for"                 { return FOR; }
"function"            { return FUNCTION; }
"if"                  { return IF; }
"integer"             { return INTEGER; }
"print"               { return PRINT; }
"return"              { return RETURN; }
"string"              { return STRING; }
"true"                { return TRUE; }
"void"                { return VOID; }
"while"               { return WHILE; }

[a-zA-Z][a-zA-Z0-9_]{0,255} { return ID; }

[0-9]+                { return NUM; }

"'"[^\\\n']"'"        { return CHAR; }
"'"\\[n0\\']"'"       { return CHAR; }
"'"                   { return ERROR; }

\"([^\"\n\\]|\\[n0])*\"  { return STR; }

"+"                   { return '+'; }
"-"                   { return '-'; }
"*"                   { return '*'; }
"/"                   { return '/'; }
"%"                   { return '%'; }
"!"                   { return '!'; }
"<"                   { return '<'; }
">"                   { return '>'; }
"="                   { return '='; }
":"                   { return ':'; }
";"                   { return ';'; }
","                   { return ','; }
"("                   { return '('; }
")"                   { return ')'; }
"["                   { return '['; }
"]"                   { return ']'; }
"{"                   { return '{'; }
"}"                   { return '}'; }
"\\"                  { return '\\'; }

"<="                  { return LEQ; }
">="                  { return GEQ; }
"=="                  { return EQ; }
"!="                  { return NE; }
"&&"                  { return AND; }
"||"                  { return OR; }

.                     { return ERROR; }

%%