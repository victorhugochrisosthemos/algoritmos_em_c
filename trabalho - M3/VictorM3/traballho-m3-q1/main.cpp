#include <iostream>

using namespace std;

#define TMAX 5

int main()
{
    int r[TMAX],a[10],contador;
    bool repetido;
    char mais;

    cout << "Informe os 5 elementos do gabarito da LOTO" << endl;
    for(int i = 0; i < TMAX; i++){
        do{
            repetido = false;
            cout << "R[" << i + 1 << "]:";
            cin >> r[i];
            cin.ignore();
            for(int j = 0; j < i; j++){
                if(r[i] == r[j] or r[i] < 0 or r[i] > 60){
                    cout << "O numero deve ser unico de 0 ate 60, informe outro numero" << endl;
                    repetido = true;
                }
            }
        } while(repetido);
    }
    do{
        cout << "Informe 10 elementos de uma aposta" << endl;
        for(int i = 0; i < 2*TMAX; i++){
            do{
                repetido = false;
                cout << "A[" << i + 1 << "]:";
                cin >> a[i];
                cin.ignore();
                for(int j = 0; j < i; j++){
                    if(a[i] == a[j] or a[i] < 0 or a[i] > 60){
                        repetido = true;
                        cout << "O numero deve ser unico de 1 ate 60, informe outro numero" << endl;
                        break;
                    }
                }
            }while(repetido);
        }
        contador = 0;
        for(int i = 0; i < TMAX;i++){
                for(int j = 0; j < 10; j++){
                    if(r[i] == a[j]){
                        contador++;
                    }
                }
        }

        cout << "Voce acertou " << contador << " pontos" << endl;
        if(contador == TMAX){
            cout << "Parabens, voce ganhou!" << endl;
        }
        cout << "Mais uma ponta? S/N" << endl;
        mais = toupper(cin.get());
    }while(mais == 'S');

    return 0;
}
