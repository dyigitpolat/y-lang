all:
	mkdir -p bin
	flex -o bin/yylex.c y.l
	bison -d -o bin/yyparse.c y.y
	gcc -o bin/yprogram bin/yyparse.c bin/yylex.c -ll

clean:
	rm -rf bin