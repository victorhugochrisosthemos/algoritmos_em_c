#include <iostream>
using namespace std;

int main(){

    int i, j, k, ti=0;
    int R[10], S[20], X[10];

    for(i=0; i<10; i++)
    {
        cout<<"Insira 10 valores para Vetor R: ";
        cin>>R[i];
    }

    system("clear||cls");
    for(i=0; i<20; i++)
    {
        cout<<"Insira 20 valores para Vetor S: ";
        cin>>S[i];
    }

    for(i=0; i<10; i++){
        for(j=0; j<20; j++){
            if(R[i]==S[j]){
               X[ti++]=R[i];
            }
        }
    }

    for(i=0; i<ti; i++){
        for(j=i+1; j<ti; j++){
            if(X[i]==X[j]){
                for(k=j; k<ti; k++){
                    X[k] = X[k + 1];
                }
                ti--;
                j--;
            }
        }
    }

    system("clear||cls");
    cout<<"Vetor R: ";
    for(i=0; i<10; i++)
        cout<<R[i]<<" ";

    cout<<endl<<"Vetor S: ";
    for(i=0; i<20; i++)
        cout<<S[i]<<" ";

    cout<<endl;
    cout<<"Interseccao/Vetor X: ";
    for(i=0; i<ti; i++)
        cout<<X[i]<<" ";

    return 0;
}
