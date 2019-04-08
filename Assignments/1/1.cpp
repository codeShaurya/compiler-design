#include <bits/stdc++.h>
using namespace std;

int main()
{
  ofstream input;
  string b;
  input.open("1.txt");
  cout << "Write your c code here" << endl;
  while (getline(cin, b))
  {
    if (b == "EOF")
      break;
  }
  cout << "Code is saved in 1.txt file\n" << endl;
  return 0;
}
