#include<stdio.h>
int main()
{
	
	int Num1, Num2, Num3,Mul;
	printf("Enter Your Num1:");
	scanf("%d", &Num1);
	printf("Enter Your Num2:");
	scanf("%d", &Num2);
	printf("Enter Your Num3:");
	scanf("%d", &Num3);
	Mul= Num1 * Num2 * Num3;
	printf("%d*%d*%d=%d", Num1,Num2,Num3,Mul);
	return 0;
}
