#include <bits/stdc++.h>
using namespace std;

int main()
{
     ifstream file;
     file.open("4.txt");
     if (!file.is_open())
     {
          cout << "Error " << endl;
          return 0;
     }
     string ans;

     string word;
     while (file >> word)
          ans = ans + word;

     file.close();
     ofstream op;
     cout << ans << endl;
     op.open("4.txt");
     cout << "All the blank space, tab and newline character were removed from the file" << endl;
     return 0;
}
