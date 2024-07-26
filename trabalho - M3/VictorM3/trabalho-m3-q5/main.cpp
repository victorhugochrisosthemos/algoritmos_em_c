#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int r[TMAX],x,p;
    r[TMAX - 1] = 0;

    cout << "Vetor R" << endl;
    for(int i = 0; i < TMAX - 1; i++){
        cout << "R[" << i << "]:";
        cin >> r[i];
        cin.ignore();
    }

    cout << "Informe o valor de X:";
    cin >> x;
    cin.ignore();

    do{
        cout << "Informe o valor de P de 0 a 8:";
        cin >> p;
        cin.ignore();
        if(p < 0 or p > TMAX - 2){
            cout << "Nao aceita" << endl;
        }
    }while(p < 0 or p > TMAX - 2);

    cout << "---------------------------------" << endl;
    cout << "Vetor R = ";
    for(int i = 0; i < TMAX - 1; i++){
        cout << r[i] << " ";
    }

    for(int i = TMAX - 1; i >= p + 1; i--){
        r[i] = r[i] + r[i - 1];
        r[i - 1] = r[i] - r[i - 1];
        r[i] = r[i] - r[i - 1];
    }
    r[p] = x;

    cout << "\nValor de X = " << x << endl;
    cout << "Valor de P = " << p << endl;

    cout << "Vetor R alterado = ";
    for(int i = 0; i < TMAX; i++){
        cout << r[i] << " ";
    }

    return 0;
}
