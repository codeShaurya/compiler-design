#include<bits/stdc++.h>
using namespace std;
map<string,int> mp;
int last=0;
void read(ifstream &fl){
    string s,i;
    while(getline(fl,s)){
        int id;
        getline(fl,i);
        id=stoi(i);
        mp[s]=id;
        last=max(last,id);
    }
    return;
}
int main(){
    string s;
    ifstream fl;
    fl.open("idf.txt",ifstream::in);
    if(!fl.is_open()){
        cout<<"UNABLE TO OPEN SYMBOL TABLE"<<endl;
        return 0;
    }
	read(fl);
    fl.close();
    do{
        cout<<"Enter an identifier"<<endl;
    }while(!getline(cin,s));
    ofstream op("idf.txt",ofstream::app);
    bool valid=true;
    if(!(isalpha(s[0])||s[0]=='_'))
        valid=false;
    for(int i=1;i<s.size();i++)
    	if(!(isalnum(s[i])||s[i]=='_'))
            valid=false;

    if(!valid)
        cout<<"Given string is NOT A VALID IDENTIFIER"<<endl;
    else if(mp.find(s)!=mp.end())
        cout<<"Index of given identifier in symbol table="<<mp[s]<<endl;        
	else{
        last++;
        cout<<"given identifier has been inserted into symbol table"<<endl;
		cout<<"Index of given identifier in symbol table="<<last<<endl;
        op<<s<<endl<<last<<endl;
 	}
    return 0;
}

