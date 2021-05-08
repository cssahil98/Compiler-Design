%{
#include<stdio.h>
int countU=0;
int countL=0;
%}
%%
[A-Z] {printf("\t%s CAPITAL LETTER\n",yytext); countU++;}
[a-z] {printf("\t%s NOT A CAPITAL LETTER\n",yytext); countL++;}
%% 

main()
{
printf("\n\tEnter a String:");
printf("\n\t");
yylex();
printf("\nNo. of Capitals:%d", countU);
printf("\nNo. of Smalls:%d", countL);
}

int yywrap()
{
return 1;
}
