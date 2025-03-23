#include <iostream>

using std::cout;
using std::endl;



int main()
{
  cout << "Hello, world, from gcc" << endl;

  class TRY2 {
    int x;
  public:
    int y;
  };

  TRY2 t;
  t.y = 3;

  cout << t.y << endl;
  
}
