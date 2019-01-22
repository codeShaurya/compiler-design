#include <bits/stdc++.h>
using namespace std;

int checkOp(string s)
{
	int l = s.length();
	int i = 0;
	int j = l - 1;
	while (s[i] == ' ')
		i++;
	while (s[j] == ' ')
		j--;
	if (s[i] == '/' && s[i + 1] == '*' && s[j] == '/' && s[j - 1] == '*')
		return true;

	if (s[i] == '/' && s[i + 1] == '/')
		return true;
	return false;
}

int main()
{
	ifstream input("5.txt");
	string line;
	int c = 0;
	while (getline(input, line))
	{
		if (checkOp(line))
			c++;
	}
	cout << "No of coments is  : " << c << endl;
	return 0;
}
