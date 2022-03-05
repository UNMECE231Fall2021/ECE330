all: test_static test_dynamic

test_static: test_static.c matrix_static.c
	     gcc -o test_static test_static.c matrix_static.c -I.
	     	 
test_dynamic: test_dynamic.c matrix_dynamic.c
	     gcc -o test_dynamic test_dynamic.c matrix_dynamic.c -I.

matrix_dynamic.o: matrix_static.cpp
		gcc -c matrix_dynamic.cpp

matrix_static.o: matrix_static.cpp
		gcc -c matrix_static.cpp
			
clean:
		rm matrix_dynamic *.o
			rm matrix_static *.o
				
run:test_static test_dynamic
	    ./test_static
	    	./test_dynamic
