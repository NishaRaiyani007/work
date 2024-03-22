/*Define a class to represent a bank account. Include the following members:
1. Data Member:
-Name of the depositor
-Account Number
-Type of Account
-Balance amount in the account 
Member Functions
-To assign values
-To deposited an amount
-To withdraw an amount after checking balance
-To display name and balance */
#include<iostream>
using namespace std;

class qw
{
	public:
		char name[20],type[25];
		int acnum,bl,wh,de;
		
		void input()
		{
			
			cout<<"Name of the depositor : ";
			cin>>name;
			//gete(name);
			cout<<"Account Number :";
			cin>>acnum;
			
			cout<<"Type of Account :";
			cin>>type;
			//gete(type);
			
			
		}
	
};

class wq:public qw
{
	public:
		
		void setdata()
		{
			cout<<"deposited an amount :";
			cin>>de;
			
			cout<<"withdraw an amount : ";
			cin>>wh;
			
			//bl=de-wh;
			
			cout<<"\n--------------------------";
			cout<<"\ndeposited name :"<<name;
			
			bl=de-wh;
			cout<<"\nbalance is : "<<bl;
			
			
		}
};

main()
{
	wq w;
	w.input();
	w.setdata();
	
	
	
}
