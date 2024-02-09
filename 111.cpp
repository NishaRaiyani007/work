
//#include<stdio.h>
//int main()
//{
//	int i,j;
//	printf("Enter the number:");
//	scanf("%d,&j");
//	
//	for(i=1; i<=j; i++);
//	{
//		printf("%d",j);
//	}
//}                                                                         


//#include<stdio.h>
//int main ()
//{
//	int num, i, evensum=0, oddsum=0;
//	printf("Enter the number :");
//	scanf("%d", &num);
//	
//	for(i=1; i<=num; i++)
//	{
//		if(i%2==0)
//		{
//			evensum=evensum+i;
//		}
//		if(i%2!=0)
//		{
//			oddsum=oddsum+i;
//		}
//	}
//	printf("\nevensum=%d", evensum);
//	printf("\noddsum=%d", oddsum);
//	
//	return 0 ;
//}  


//#include<stdio.h>
//main()
//{
//	int i;
//	
//	for(i=1; i<=10; i++)
//	{
//		if(i==5)
//		{
//			continue;
//		}
//		printf("%d",i);
//	}
//}


//#include<stdio.h>
//main()
//{
//	int a[]={10,20,30,40},i;
//	
//	for(i=0; i<4; i++);
//	{
//		printf("\n%d",a[i]);
//	}
//}

//#include<stdio.h>
//main()
//{
//	int a[5],i,sum=0;
//	
//	for(i=0; i<4; i++)
//	{
//		printf("Enter the number :");
//		scanf("%d",&a[i]);
//   }
//		 for(i=0; i<4; i++)
//		{
//			printf("\n number %d is : %d",i,a[i]);
//			sum=sum+a[i];
//		}
//		printf("\nsum=%d",sum);
//}


//#include<stdio.h>
//main()
//{
//	int a[5], b[5],i;
//	printf("************** array number 1 ***********************");
//	for(i=0; i<4; i++)
//	{
//		printf("\n enter number :");
//		scanf("%d",&a[i]);
//	}
//	for(i=0; i<=4; i++)
//	{
//		printf("\n number is: %d",a[i]);
//	}
//	printf("\n****************array number 2 :******************");
//	for(i=0; i<4; i++)
//	{
//		printf("\n enter numbers : ");
//		scanf("%d", &b[i]);
//	}
//	    printf("\n number is : %d", b[i]);
//    } 
//    printf("\n ***************** addition : *****************");
//    for(i=0; i<4; i++)
//    {
//	printf("\n addition : %d",a[i]+b[i]);
//    }
//}



//#include<stdio.h>
//main()
//{
//	int a[2][3],i,j;
//	
//	for(i=0; i<2; i++)
//	{
//		for(j=0; j<3; j++)
//		{
//			printf("enter value :");
//			scanf("%d",&a[i][j]);
//		}
//	}
//}


//#iclude<stdio.h>
//main()
//{
//	int a[2][2],i,j,b[2][2];
//	
//	printf("************************ number 1: *************************\n");
//	
//	for(i=0; i<2; i++)
//	{
//		for(j=0; j<2; j++)
//		{
//			printf("enter nember :");
//			scanf("%d",&a[i][j]);
//		}
//	}
//}


//#include<stdio.h>
//
//               // fuction declaration
//
//myfun()       // function defination
//{
//	printf("\n this is fuction");
//}
//
//main()
//{
//	myfun(); //function calling
//	myfun();
//}

//#include<stdio.h>
//union myunion{
//	
//	int a;
//	int b;
//};
//
//main()
//{
//    union myunion u1,u2;
//	u1.a=10;
//	printf("%d",u1.a);
//	u2.b=20;
//	printf("\n%d",u2.b);	
//}    


//#include<stdio.h>
//main()
//{
//	char a[10];
//	char b[20];
//	
//	printf("enter string :");
//	scanf("%s",&a);
//	printf("enter string :");
//	scanf("%s",&b);
//	
//	printf("\nstring 1 is : %s",a);
//	printf("\nstring 2 is : %s",b);
//}


//#include<stdio.h>
//main()
//{
//	char a[30];
//	char b[30];
//	
//	printf("enter string 1 :");
//	gets(a);
//	printf("string : %s",a);
//	printf("\nenter string 2 :");
//	gets(b);
//	printf("string : %s",b);
//}

//#include<stdio.h>
//#include<string.h>
//main()
//{
//	
//	char a[30]="nisha raiyani";
//	
//	printf("length of string is : %d",strlen(a));
//}


//#include<stdio.h>
//#include<string.h>
//main()
//{
//	char a[30]="Nisha Raiyani";
//	char b[30]="Savan Raiyani";
//	
//	strcat(a,b);
//	printf("string is : %s ",a);
//}


//#include<stdio.h>
//#include<string.h>
//main()
//{
//	
//	char a[30]="nisha raiyani";
//	char b[30]="nisha raiyani";
//	
//	strcpy(b,a);
//	
//	printf("string is : %s",a);
//	printf("\nstring is : %s",b);
//}


//#include<stdio.h>
//main()
//{
//	FILE *fp;
//	
//	fp=fopen("tops1.txt","w");
//	
//	fprintf(fp,"this is write method");
//	
//	fclose(fp);
//}

//#include<stdio.h>
//main()
//{
//	FILE *fp;
//	
//	fp = fopen("tops1.txt","r");
//	
//	char a[100];
//	
//	fgets(a,100,fp);
//	
//	printf("%s",a);
//}

//#include<stdio.h>
//main()
//{
//	FILE *fp;
//	
//	fp = fopen("tops1.txt","a");
//	fprintf(fp,"\nthis is methood");
//	fclose(fp);
//}

//#include<stdio.h>
//main()
//{
//	int i,j;
//	
//	for(i=0; i<=5; i++);
//	
//	 for(j=0; j<=i; j++);
//	 {
//	 	printf(" ");
//	 }
//	 for(j=0; j<=i; j++)
//	 {
//	 printf("*");
//     }
//     printf("\n");
//}

//#include<iostream>
//using namespace std;
//
//class father{
//	public:
//		car()
//		{
//			cout<<"\n my father have car";
//		}
//		flat()
//		{
//			cout<<"\n my father have flat";
//		}
//		farm()
//		{
//			cout<<"\n my father have farm";
//		}
//};
//
//class child :public father{
//	public:
//		respect()
//		{
//			cout<<"\n i have respect";
//		}
//};
//
//int main()
//{
//	child obj;
//	obj.car();
//	obj.flat();
//	obj.farm();
//	obj.respect();
//}


//#include<iostream>
//using namespace std;
// 
//class Fact{
//	
//	public:
//		Fact()
//		{
//			
//		   int i,n,fact=1;
//	       cout<<"enter number n : ";
//	      
//		   cin>>n;
//	
//		    for(i=1;i<=n;i++)
//       	{
//		    fact*=i;
//	    }
//	        cout<<fact; 
//		}
//};
//class Add{
//	public:
//		myfun()
//		{
//			int a,b;
//			cout<<"\nenter number :";
//			cin>>a;
//			cout<<"\nenter number :";
//			cin>>b;
//			cout<<"\nAddtion :  "<<a+b;
//		}
//};
//
//int main()
//{
//	Fact obj;
//	Add  obj1;
//	obj1.myfun();
//}


//#include<iostream>
//using namespace std;
// 
//  class A{
//  	public:
//  		string name;
//  		show()
//  		{
//  			cout<<"enter name : ";
//  			cin>>name;
//		  }
// };
//  class B:public A{
//   public:
//  		int m,e,t,avg;
//  		marks()
//  		{ 
//  			cout<<"\nenter empsalary : ";
//  			cin>>m;
//  			cout<<"\nenter empannual salary : ";
//  			cin>>e;
//		  }
//  };
//  
//   class C:public B{
//    public:
//  		oper()
//  		{   
//  			t = m/12;
//  			cout<<"\nyour hra : "<<t;
//  			cout<<"\nyour net salary is : "<<t;
//		  }
//  };
//  
//  main(){
//  	C obj;
//  	obj.show();
//  	obj.marks();
//  	obj.oper();
//  } 



     
//#include<iostream>
//using namespace std;
//class Person{
//	private:
//		int age;
//		string name,country;
//		public:
//			
//	  getdata(string name,string country,int age)
//		{
//			this->name=name;
//				this->country=country;
//					this->age=age;
//		}
//		setdata()
//		{
//			cout<<"Name : "<<name;
//			cout<<"\nCountry : "<<country;
//			cout<<"\nAge : "<<age;
//		}
//			
//};
//int main()
//{
//	Person obj;
//	obj.getdata("nisha","India",24
//	);
//    obj.setdata();
//	
//}



#include<iostream>
using namespace std;

class A{
	private:
		int c=20;\
		
		friend class F;
};

class F{
	public:
		show(A & b)
		{
			cout<<"C : "<<b.c;
		}
};
int main()
{
	A obj1;
	F obj;
	obj.show(obj1);
}




















