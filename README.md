this method is for windows users

Either you can run them with notepad++ and cmd
or else try installing applications : dev c++, flex , bison
for more help : https://thesvgway.wordpress.com/2013/10/09/how-to-compile-run-lex-yacc-programs-on-windows/




How to run Lex file in windows:

1. save the Lex file with ".l" name, ( for example : hello.l )
2. go to cmd 
3. go to file directory where you saved the file
4. now write in cmd : 
5. flex calculator.l
6. gcc lex.yy.c
7. a.exe 
8. if the file doesn't run with a.exe then write hello.exe



How to run YACC file in windows:

1. save the Lex file with ".l" name, ( for example : hello.l )
2. save the YACC file with ".y" name, ( for example : hello.y )
3. go to cmd 
3. go to file directory where you saved the file
4. now write in cmd : 
5. flex calculator.l
6. bison -dy hello.y
7. gcc lex.yy.c y.tab.c
8. a.exe 
9. if the file doesn't run with a.exe then write hello.exe
