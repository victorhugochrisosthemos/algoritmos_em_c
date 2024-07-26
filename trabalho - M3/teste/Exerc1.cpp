#include <iostream>
using namespace std;
int main(){

    int points=0, i, j, k;
    int R[5], A[10];
    char answer;

    cout<<"Insira o gabarito da Loto"<<endl;

    do
    {
        for(i=0; i<5; i++){
            cout<<"Numeros sorteados de 1 a 60: ";
            cin>>R[i];
        }

        for(i=0; i<5; i++)
            if(R[i]<1 || R[i]>60){
                R[0]=61;
                system("clear||cls");
                cout<<"Apenas valores entre 1 a 60"<<endl;
                cout<<"Insira os numeros novamente"<<endl;
            }

        for(i=0; i<5; i++)
            for(j=i+1; j<5; j++)
                if(R[i]==R[j]){
                    R[0]=0;
                    system("clear||cls");
                    cout<<"Valores repetidos"<<endl;
                    cout<<"Insira os numeros novamente"<<endl;
                }

    }while(R[0]==0 || R[0]==61);

    system("clear||cls");
    cout << "Facam suas apostas!" << endl;

    k=0;
    do
    {
        do
        {
            do
            {
                for(i=0; i<10; i++){
                    cout<<"Numeros de 1 a 60: ";
                    cin>>A[i];
                }

                for(i=0; i<10; i++)
                    if(A[i]<1 || A[i]>60){
                        A[0]=61;
                        system("clear||cls");
                        cout<<"Apenas valores entre 1 a 60"<<endl;
                        cout<<"Insira os numeros novamente"<<endl;
                    }

                for(i=0; i<5; i++)
                    for(j=i+1; j<5; j++)
                        if(A[i]==A[j]){
                            A[0]=0;
                            system("clear||cls");
                            cout<<"Valores repetidos"<<endl;
                            cout<<"Insira os numeros novamente"<<endl;
                        }

            }while(A[0]==0 || A[0]==61);

            for(i=0; i<5; i++)
                for(j=0; j<10; j++)
                    if(R[i]==A[j]){
                        points++;
                    }
            k++;
            system("clear||cls");
            cout<<"Total de Pontos: "<<points<< endl;
            points=0;
        }while(k<2);
        do{
            cout << "Deseja ver mais uma aposta (S ou N):";
            cin >> answer;
            answer = toupper(answer);
            if(answer == 'S'){
                points=0;
            }
        }while(answer != 'S' && answer != 'N');
    }while(answer != 'N');

    system("clear||cls");
    cout<<"Obrigado por apostar!";

    return 0;
}
