#include <bits/stdc++.h>
using namespace std;

int main()
{
   ifstream input("2.txt");
   string line;
   int c = 0;
   while (getline(input, line)) c++;
   cout << "No of lines in file 2.txt is  : " << c << endl;

   return 0;
}
