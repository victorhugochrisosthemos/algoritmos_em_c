#include <iostream>
#define TAM 10
#define TMAX 20
using namespace std;

int main(){

    int X[TAM], Y[TAM], R[TMAX];
    int i=0;

    for(i=0; i<TAM; i++)
    {
        cout<<"Insira 10 valores para o Vetor X: ";
        cin>>X[i];
    }

    system("clear||cls");
    for(i=0; i<TAM; i++)
    {
        cout<<"Insira 10 valores para o Vetor Y: ";
        cin>>Y[i];
    }

    system("clear||cls");
    cout<<"Vetor X: ";
    for(i=0; i<TAM; i++)
        cout<<X[i]<<" ";

    cout<<endl<<"Vetor Y: ";
    for(i=0; i<TAM; i++)
        cout<<Y[i]<<" ";


    cout<<endl<<"Vetor R: ";
    for(i=0; i<TAM; i++)
        R[i*2]=X[i];

    for(i=0; i<TAM; i++)
        R[i*2+1]=Y[i];

    for(i=0; i<TMAX; i++)
        cout<<R[i]<<" ";

}
