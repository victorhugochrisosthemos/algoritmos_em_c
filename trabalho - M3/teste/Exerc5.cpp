#include <iostream>
#define TAM 10
using namespace std;

int main()
{

    int i, P, X;
    int B[TAM];

    for(i=0; i<9; i++)
    {
        cout<<"Insira 9 valores para o Vetor B: ";
        cin>>B[i];
    }

    //system("clear||cls");
    cout<<"Escolha um valor X: ";
    cin>>X;

    //system("clear||cls");
    do
    {
        cout<<endl;
        cout<<"Escolha uma posicao (entre 0 e 8) do"<<endl;
        cout<<"Vetor no qual deseja inserir o Valor X: ";
        cin>>P;

        if(P<0||P>8)
        {
            //system("clear||cls");
            cout<<endl;
            cout<<"Apenas valores entre 0 e 8!";
        }
    }
    while(P<0||P>8);

    for(i=9; i>=P; i--){
        B[i]=B[i-1];
    }
    B[i+1]=X;

    for(i=0; i<10; i++)
        cout<<B[i]<<" ";

    return 0;
}

