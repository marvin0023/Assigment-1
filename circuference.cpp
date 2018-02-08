#include<stdio.h>
#include<stdint.h>

extern "C" double Circle();


int main()
{
	double return_circle = -99.99;
	
	printf("%s", "Welcome to the circle program. This program will compute the area and the circumference of a circle: \n");
	return_circle = Circle();

	return 0;
}
