#include "matrix_dynamic.h"

int main() 
{
	printf("Dynamic Execution: \n\n");
	static T data[] = { 1,1,3,4 };
	matrix  a, b, added, transposed;
	a = create_initvals(2, 2, data);
	b = create_empty(2, 2);
	equate(&a, &b);
	printf("\n Matrix a:");
	matrix_print(a);
	printf("\n Matrix b:");
	matrix_print(b);
	printf("\n a+b:");
	added = add(a, b);
	matrix_print(added);
	printf("\n Transpose of a+b:");
	transposed = transpose(added);
	matrix_print(transposed);
}
