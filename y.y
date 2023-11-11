%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);

int depth = 0;

%}

%token Y LPAREN RPAREN

%%
program:
       | program expression { printf("\n"); }
       ;

expression: Y LPAREN { printf("%d(", depth++); } expression_list RPAREN { depth--; printf(")"); }
          ;

expression_list:
               | expression_list expression
               ;
%%

void yyerror(const char *s) {
  fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    printf("Enter expressions:\n");
    yyparse();
    return 0;
}
