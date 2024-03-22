#include<iostream>

using namespace std;

class calu
{
	int x,y,ans;
	
	public:
		calu();
		void display();
		
};
calu::calu()
{
	cout<<"Enter Value of x : ";
	cin>>x;
	
	cout<<"Enter Value of y : ";
	cin>>y;
}

void calu::display()
{
	cout<<"\nAddition : "<<x+y;
	cout<<"\nSubstraction : "<<x-y;
	cout<<"\nMultiplication : "<<x*y;
	cout<<"\nDivision : "<<x/y;
}
main()
{
	calu c;
	c.display();
}
