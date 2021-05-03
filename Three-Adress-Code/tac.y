%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
    void ThreeAddressCode();
    char AddtoTable(char ,char, char);

    int index1=0;
    char temp='A';
    struct expr
    {
        char operand1;
        char operand2;
        char operator;
    };
%}

%union
{
    char symbol;
}

%token <symbol> LETTER NUMBER
%type <symbol> exp
%left '-''+'
%right '*''/'

%%

statement: LETTER '=' exp ';' {AddtoTable((char)$1,(char)$3,'=');}
         | exp ';'
         ;

exp: exp '+' exp {$$ = AddtoTable((char)$1,(char)$3,'+');}
   | exp '-' exp {$$ = AddtoTable((char)$1,(char)$3,'-');}
   | exp '*' exp {$$ = AddtoTable((char)$1,(char)$3,'*');}
   | exp '/' exp {$$ = AddtoTable((char)$1,(char)$3,'/');}
   | '(' exp ')' {$$ = (char)$2;}
   | NUMBER {$$ = (char)$1;}
   | LETTER {$$ = (char)$1;}
   ;

%%

yyerror(char *s)
{
  printf("%s",s);
  exit(0);
}

struct expr arr[20];
int id=0;

char AddtoTable(char operand1,char operand2,char operator)
{
    arr[index1].operand1=operand1;
    arr[index1].operand2=operand2;
    arr[index1].operator=operator;
    index1++;
    temp++;
    return temp;
}

void ThreeAddressCode()
{
    int cnt=0;
    temp++;
    printf("\n\n\t THREE ADDRESS CODE\n\n");
    while(cnt<index1)
    {
        printf("%c : = \t",temp);  
        if(isalpha(arr[cnt].operand1))
            printf("%c\t",arr[cnt].operand1);
        else
            {printf("%c\t",temp);}
        printf("%c\t",arr[cnt].operator);
        if(isalpha(arr[cnt].operand2))
            printf("%c\t",arr[cnt].operand2);
        else
            {printf("%c\t",temp);}
        printf("\n");
        cnt++;
        temp++;
    }
}



main()
{
    printf("\nEnter the Expression: ");
    yyparse();
    temp='A';
    ThreeAddressCode();
}

yywrap()
{
    return 1;
}
