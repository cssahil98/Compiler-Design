%{
#include<stdio.h>
int i;
%}

%%

[0-9]+	 {i=atoi(yytext);
		if(i%2==0)
			printf("it is Even");
		else
		printf("it is Odd");}
%%
int yywrap(){}

int main()
{

	yylex();
	return 0;
}
