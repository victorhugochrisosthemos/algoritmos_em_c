#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int d[TMAX], contador;
    contador = 0;

    cout << "Informe 10 elementos do Vetor D" << endl;
    for(int i = 0; i < TMAX; i++){
        cout << "D[" << i + 1 << "]:";
        cin >> d[i];
        cin.ignore();
    }
    cout << "--------------------------------------" << endl;
    cout << "Entrada do Vetor D" << endl;
    for(int i = 0; i < TMAX; i++){
        cout << d[i] << " ";
    }
    cout << "\n--------------------------------------" << endl;

    for(int i = 0; i < TMAX; i++){
        if(d[i] <= 0){
            //d[i] = 0;
            for(int j = i; j < TMAX; j++){
                if(d[j] > 0){
                    d[j] = d[j] + d[i];
                    d[i] = d[j] - d[i];
                    d[j] = d[j] - d[i];
                    // Trocar valores entre vetores sem utilizar variavel auxiliar
                    contador++;
                    break;
                    //Esse break evita fazer testes desnecessarios, ele quebra o for mais proximo
                }
            }
        }
    }

    cout << "\nSaída do Vetor D" << endl;
    for(int i = 0; i < contador; i++){
        cout << d[i] << " ";
    }

    return 0;
}
