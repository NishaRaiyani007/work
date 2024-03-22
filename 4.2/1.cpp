//WAP to create simple calculator using class 
#include<iostream>
using namespace std;
class wap
{
	public:
		
		float a,b,ans;
		
		void intput()
		{
			
			cout<<"Enter A and B :";
			cin>>a>>b;
			
			
			
		}
	
};

class waps:public wap
{
	public:
		
	void setdata()	
	{
		cout<<"ans(+)=:"<<a+b<<endl;
		cout<<"ans(-)=:"<<a-b<<endl;
		cout<<"ans(*)=:"<<a*b<<endl;
		cout<<"ans(/)=:"<<a/b;
		
	}
	
	
};


main()
{
	waps obj;
	obj.intput();
	obj.setdata();
	
	
	
}
