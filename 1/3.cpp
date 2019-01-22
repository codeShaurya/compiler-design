#include <bits/stdc++.h>
using namespace std;

int checkOp(string s)
{
	int c = 0;
	int i = 0;
	while (i < s.length())
	{
		if (s[i] == '+' || s[i] == '-' || s[i] == '*' || s[i] == '/' || s[i] == '=')
		{
			c++;
			i++;
			continue;
		}
		if (s[i] == '+' && s[i - 1] == '+')
		{
			i++;
			c--;
			continue;
		}

		if (s[i] == '-' && s[i - 1] == '-')
		{
			i++;
			c--;
			continue;
		}

		if ((s[i - 1] == '-' || s[i - 1] == '+' || s[i - 1] == '*' || s[i - 1] == '/') && s[i] == '=')
		{
			i++;
			c--;
			continue;
		}
	}

	return c;
}

int main()
{
	ifstream input("3.txt");
	string line;
	int c = 0;
	while (getline(input, line))
	{
		int cnt = checkOp(line);
		c += cnt;
	}

	cout << "No of operator is  : " << c << endl;
	return 0;
}
