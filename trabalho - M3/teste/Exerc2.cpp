#include <iostream>
#define TAM 10
using namespace std;

int main(){

    int D[TAM];
    int i=0;

    for(i=0; i<TAM; i++)
    {
        cout<<"Insira 10 valores para o Vetor: ";
        cin>>D[i];
    }

    for(i=0; i<TAM; i++)
        if(D[i]<0)
            D[i]=0;

    int vet_copia=0;
    for(int pos_leitura=0; pos_leitura<TAM; pos_leitura++)
    {
        if(D[pos_leitura]==0)
            continue;

        D[vet_copia]=D[pos_leitura];
        vet_copia++;
    }

    system("clear||cls");
    cout<<"Resultado:"<<endl;
    cout<<"Vetor Inicial: ";
    for(i=0; i<TAM; i++)
        cout<<D[i]<<" ";

    cout<<"\n"<<endl;
    cout<<"Vetor Final: ";
    for(i=0; i<vet_copia; i++)
        cout<<D[i]<<" ";

    return 0;
}
