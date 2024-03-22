/*Assume that the test results of a batch of students are stored in three different
classes. Class Students are storing the roll number. Class Test stores the marks
obtained in two subjects and class result contains the total marks obtained in
the test. The class result can inherit the details of the marks obtained in the
test and roll number of students. (Multilevel Inheritance)*/
#include<iostream>
using namespace std;

class student
{
	public:
		int number;
		char name[20];
		
		void roll()
		{
			cout<<"\n Enter Student Roll Number : ";
			cin>>number;
			
			fflush(stdin);
			
			cout<<"\nEnter Student Name : ";
			gets(name);
		}
	
};

class test :public student
{
	/*Class Test stores the marks
obtained in two subjects and class result contains the total marks obtained in
the test.*/
		
	public:
		
		int f,s,t;
		
		
		void markss()
		{
			
			cout<<"\n Enter Student Marks :";
			
			
			cout<<"\n  1. English :";
			cin>>f;
			
			cout<<"\n 2. SS : ";
			cin>>s;
			
			t=f+s;
//			cout<<"totel :"<<t;
		}	
};


class totel :public test
{
	
	public:
		
		void result()
		
		{
			cout<<"\n/************** Result *****************/";
			cout<<"\nStudent Name Is : "<<name;
			cout<<"\nStudent Roll Number :"<<number;
			
			cout<<"\nTotel Marks : "<<t; 
			
		}
	
};

main()

{
	
	totel obj;
	obj.roll();
	obj.markss();
	obj.result();
	
}
