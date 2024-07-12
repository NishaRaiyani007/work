#include<stdio.h>
int main()
{
	float radius, area, PI=3.14;
	printf("Enter radius of circle:");
	scanf("%f", &radius);
	area=PI *radius * radius;
	printf("Area of circle: %f" , area);
	return 0 ;
}
