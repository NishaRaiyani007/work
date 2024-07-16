#include<stdio.h>
int main()
{
	int days, years,day,year;
	printf("Enter The Year:");
	scanf("%d", &years);
	
	days=years * 365 ;
	
	printf("Number Of Days Is %d", days);
	
	printf("\nEnter The Days");
	scanf("%d", &day);
	
	year= day / 365 ; 
	
	printf("Number Of Year Is %d", year);
	return 0;
}


//#include<stdio.h>
//int main()
//{
//	int days,years,week;
//	printf("Enter The day:");
//	scanf("%d", &days);
//	
//	years=days / 365 ;
//	
//	printf("Number Of years Is %d", years);
//	
//	week = (days % 365) / 7;
//	
//	printf("\n Number Of Week Is %d",week);
//	return 0;
//}  
