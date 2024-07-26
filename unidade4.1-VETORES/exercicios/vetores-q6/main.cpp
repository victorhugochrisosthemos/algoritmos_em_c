#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int n,diminui,x[TMAX];
    do{
        cout << "Informe o tamanho N do vetor X:" << endl;
        cin >> n;
        cin.ignore();
    }while( n < 1 && n > 10);
    cout << "-----------------------------------" << endl;
    for(int i = 0; i < n; i++){
        cout << "\nIteracao " << i + 1;
        cout << "\nInforme um valor para o vetor X:\n";
        cin >> x[i];
        cin.ignore();
        cout << "-----------------------------------" << endl;
    }
    cout << "Vetor inicial: ";
    for(int i = 0; i < n; i++){
       cout << x[i] << " ";
    }
    diminui = n;
    for(int i = 0; i < n / 2 ; i++){
            diminui--;
            x[i] = x[i] + x[diminui];
            x[diminui] = x[i] - x[diminui];
            x[i] = x[i] - x[diminui];
    }
    cout << "\nVetor modificado: ";
    for(int i = 0; i < n; i++){
       cout << x[i] << " ";
    }
    return 0;
}
