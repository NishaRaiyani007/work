#include<iostream>
#include<string.h>
using namespace std;

class cricket
{
public :
	int bcode;
	char bname[20];
	int innings,notout,runs;
	void data()
	{
	cout<<"Enter batsman code ";
	cin>> bcode;
	cout<<"Enter batsman name ";
	cin>> bname;
	cout<<"enter innings,notout and runs ";
	cin>>innings>>notout>>runs;

	}
};
class batsman : public cricket
{
public :
	int batavg;
    void final()
    {		
	batavg=runs/(innings-notout);
	
	cout<<"\nBatsman code "<<bcode<<"\nBatsman name "<<bname<<"\nInnings "<<innings
	<<"\nNot out "<<notout<<"\nRuns "<<runs<<"\nBatting Average "<<batavg;
    }
};
main()
{
	batsman b;
	b.data();
	b.final();
}
