#include<bits/stdc++.h>
using namespace std;
/*SHIFT REDUCE PARSER FOR FOLLOWING GRAMMAR
E->E+E
E->E*E
E->id
*/
string LHS[]={"E","E","E"};
string RHS[]={"E+E","E*E","id"};
void print(queue<char> q){
    while(q.size()){
        cout<<q.front();
        q.pop();
    }
    cout<<"\t\t";
}
int main(){
    string ip;
    cout<<"Enter the Input String to be parsed"<<endl;
    cin>>ip;
    queue<char> q;
    for(char x:ip)
        q.push(x);
    q.push('$');
    string Stack="$";
    cout<<"STACK\tINPUT BUFFER\tPARSING ACTION"<<endl;
    bool accept=false;
    while((q.size()>1)||(Stack.length()>=2)){
        //print output;
        cout<<Stack<<"\t";
        print(q);
        int act=-1;
        //can i reduce?
        int rule=-1;
        for(int i=0;i<3;i++){
            size_t found=Stack.rfind(RHS[i]);
            if(found!=string::npos){
                if(found+RHS[i].length()==Stack.length()){
                    rule=i;
                    Stack.replace(found,RHS[i].length(),LHS[i]);
                    break;
                }
            }
        }
        if(rule!=-1){
            cout<<"REDUCE USING RULE "<<LHS[rule]<<"->"<<RHS[rule]<<endl;
            continue;
        }
        //can i shiftid
        if(q.size()>1){
            Stack=Stack+q.front();
            q.pop();
            cout<<"SHIFT"<<endl;
            continue;
        }
        break;

    }
    if(Stack=="$E"&&q.size()==1){
        cout<<"ACCEPT"<<endl;
    }
    else{
        cout<<"ERROR! NOT A VALID EXPRESSION"<<endl;
    }
    return 0;
}
