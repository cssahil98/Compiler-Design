%{
#include<stdio.h>
#include<string.h>
int i = 0;
%}
  

%%
([a-zA-Z0-9])*    {i++;}            
  
"\n" {printf("Total number of words are : %d\n\n", i); i = 0;}
%%
  
int yywrap(void){}
  
int main()
{   
    yylex();
  
    return 0;
}
