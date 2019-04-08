#include<bits/stdc++.h>
using namespace std;
map<string,int> mp;
int last=0;
string kw[]={"for","if","while","do","else","int","float","double","char","goto","return"};
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
        fl.open("kwd.txt",ifstream::in);
        if(!fl.is_open()){
                cout<<"UNABLE TO OPEN SYMBOL TABLE"<<endl;
               return 0;
        }
        read(fl);
        fl.close();
        do{
                cout<<"Enter a keyword"<<endl;
        }while(!getline(cin,s));
        ofstream op("kwd.txt",ofstream::app);
        bool valid=false;
        for(string &fs:kw)
                if(s==fs)
                        valid=true;
        if(!valid)
                cout<<"Given string is NOT A VALID KEYWORD"<<endl;
        else if(mp.find(s)!=mp.end())
                cout<<"Index of given keyword in symbol table="<<mp[s]<<endl;
		else{
                last++;
                cout<<"Given Keyword has been inserted into symbol table"<<endl;
                cout<<"Index of given keyword in symbol table="<<last<<endl;
                op<<s<<endl<<last<<endl;
        }
     return 0;
}


