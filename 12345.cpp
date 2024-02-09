//#include<iostream>
//using namespace std;
//main()
//{
//	int a=50;
//	cout<<"The Value Of A Is"<<a;
//}


//#include<iostream>
//using namespace std;
//main()
//{
//	cout<<"Hello And Welcome To The C++ Programming"<<endl;
//	cout<<"Hello Students";
//}


//#include<iostream>
//using namespace std;
//main()
//{
//	int a=50 ,b=65;
//	cout<<"The Addition of a and b is"<<a+b<<endl;
//	cout<<"The Subtrection of a and b is"<<a-b<<endl;
//	cout<<"The mULTIPLICATION of a and b is"<<a*b<<endl;
//
//   char nisha='i';
//	 cout<<nisha;     
//}

//#include<iostream>
//using namespace std;
//main()
//{
//	int a;
//	cout<<"Enter the value of a:";
//	cin>>a;
//	cout<<"Value of a is:"<<a;
//}


//#include<iostream>
//using namespace std;
//main()
//{
//	int age;
//	cout<<"Enter The Age:";
//	cin>>age;
//	if(age>18)
//	{
//		cout<<"You Can Marry";
//	}
//	else
//	{
//		cout<<"Child Marry is not allowed";
//	}
//}


//#include<iostream>
//using namespace std;
//main()
//{
//	int i,num;
//	cout<<"Enter a number:";
//	cin>>num;
//	for(i=1; i<=num; i++)
//	{
//		cout<<"\n"<<i;
//	}
//}


//#include<iostream>
//using namespace std;
//class student
//{
//	public:
//		int age=30;
//};
//main()
//{
//	student s1;
//	cout<<s1.age;
//}

//#include<iostream>
//using namespace std;
//class student
//{
//	public:
//		int id;
//	    string name;
//	    string subject;
//	    
//	    void inputdata()
//	    {
//	    	cout<<"Enter Id:"<<endl;
//	    	cin>>id;
//	    	cout<<"Enter name:"<<endl;
//	    	cin>>id;
//	    	cout<<"Enter Subject:"<<endl;
//	    	cin>>subject;
//		}
//		void displaydata()
//		{
//			cout<<"id:"<<id<<endl;
//			cout<<"name:"<<name<<endl;
//			cout<<"subject:"<<subject;
//		}
//};
//class faculty
//{
//	public:
//		int id;
//		string name;
//		string department;
//		
//		void inputdata()
//		{
//			cin>>id;
//			cout<<"Enter Id:"<<endl;
//			cin>>name;
//			cout<<"Enter Department:"<<endl;
//			cin>>department;
//		}
//		void displaydata()
//		{
//			cout<<"Faculty data"<<endl;
//			cout<<"Id"<<endl;
//			cout<<"Name"<<endl;
//			cout<<"Department:"<<department;
//		}
//};
//main()
//{
//	student s1;
//	faculty f1;
//	
//	s1.inputdata();
//	s1.displaydata();
//	
//	f1.inputdata();
//	f1.displaydata();
//	
//	student obj;
//	obj.inputdata();
//	obj.displaydata();
//}


//#include<iostream>
//using namespace std;
//class student
//{
//	public:
//		student() // default constuctor
//		{
//			cout<<"welcome to the constructor\n";
//		}
//		student(int a,int b) //parameterize
//		{
//			cout<<"a = "<<a;
//			cout<<"b = "<<b;
//		}
//};
//main()
//{
//	student s1=student();
//	student s2=student(10,20);
//}

//#include<iostream>
//using namespace std;
//class demo
//{
//	public:
//	   int a,b;
//	   void inputdata(int a, int b)
//	   {
//	   	 this->a = a;
//	   	 this->b = b;
//	   }
//	   void displaydata()
//	   {
//	   	  cout<<"\na ="<<a;
//	   	  cout<<"\nb ="<<b;
//	   }	
//};
//main()
//{
//	demo d;
//	d.inputdata(10,20);
//	d.displaydata();
//}

//#include<iostream>
//using namespace std;
//class student
//{
//	public:
//		int id;
//		string name;
//		string subject;
//		void setid(int id)
//		{
//			this->id = id;
//		}
//		int getid()
//		{
//			return this->id;
//		}
//		void setname(string name)
//		{
//			this->name = name;
//		}
//		string getname()
//		{
//			return this->name;
//		}
//};
//main()
//{
//	student s1;
//	s1.setid(10);
//	cout<<s1.getid();
//	
//	s1.setname("\nnisha");
//	cout<<s1.getname();
//}

//#include<iostream>
//#include<math.h>
//using namespace std;
//main()
//{
//	cout<<pow(2,5);
//	cout<<"\n"<<sqrt(64);
//	cout<<"\n"<<sin(78);
//	cout<<"\n"<<cos(65);
//	cout<<"\n"<<tan(54);
//	cout<<"\n"<<log(30);
//	cout<<"\n"<<ceil(78.67);
//}

//#include<stdio.h>
//main()
//{
//	float days,years,weeks;
//	printf("Enter The Days:");
//	scanf("%f",&days);
//	
//	years=(days/365);
//	weeks=(days/7);
//	printf("Number Of Years:%.2f \n",years);
//	printf("Numbers of week in a year : %.2f",weeks);
//}
