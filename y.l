%{
#include "yyparse.h"
%}

%%

Y       { return Y; }
\(      { return LPAREN; }
\)      { return RPAREN; }

[ \t\n] ; /* Ignore whitespace */

.       { printf("Unexpected character: %s\n", yytext); }

%%
