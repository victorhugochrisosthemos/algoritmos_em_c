#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int contadorPar, contadorImpar, x[TMAX], y[TMAX], r[2*TMAX];
    contadorPar = 0;
    contadorImpar = 0;

    cout << "Vetor X" << endl;
    for(int i = 0; i < TMAX; i++){
        cout << "X[" << i + 1 << "]:";
        cin >> x[i];
        cin.ignore();
    }

    cout << "Vetor Y" << endl;
    for(int i = 0; i < TMAX; i++){
        cout << "X[" << i + 1 << "]:";
        cin >> y[i];
        cin.ignore();
    }

    for(int i = 0; i < 2*TMAX; i++){
        if(i % 2 == 0){
            if(i == 0){
                r[i] = x[0];
            }else{
                contadorPar++;
                r[i] = x[contadorPar];
            }
        } else{
            if(i == 1){
                r[i] = y[0];
            } else{
                contadorImpar++;
                r[i] = y[contadorImpar];
            }
        }
    }

    cout << "Vetor X = ";
    for(int i = 0; i < TMAX; i++){
        cout << x[i] << " ";
    }

    cout << "\nVetor Y = " << endl;
    for(int i = 0; i < TMAX; i++){
        cout << y[i] << " ";
    }

    cout << "\nVetor R = " << endl;
    for(int i = 0; i < 2*TMAX; i++){
        cout << r[i] << " ";
    }

    return 0;
}
