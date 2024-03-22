#include<iostream>
using namespace std;

class line
{
   public:
              inline float mul(float x,float y)
              {
                            return(x*y);
              }
              inline float cube(float x)
              {
                            return(x*x*x);
              }
};

int main()
{
              line l;
              float val1,val2;

              cout<<"\nEnter 1st value :: ";
              cin>>val1;
              cout<<"\nEnter 2nd value :: ";
              cin>>val2;
              cout<<"\nMultiplication value is : "<<l.mul(val1,val2);
              cout<<"\n\nCube value of  [ " <<l.mul(val1,val2)<<" ] is : ["<<l.mul(val1,val2)*l.mul(val1,val2)*l.mul(val1,val2)<<" ]\n";

              return 0;
}
