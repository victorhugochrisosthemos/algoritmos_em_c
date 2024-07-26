#include <iostream>

using namespace std;

int main()
{
    int n,aux;
    float r[15];
    do{
        cout << "Informe a quantidade de elementos: ";
        cin >> n;
        cin.ignore();
    }while(n < 1 or n > 15);
    for(int i = 0; i < n; i++){
        cout << "R[" << i << "]: ";
        cin >> r[i];
        cin.ignore();
    }
    cout << "-----------------------------------" << endl;
    cout << "Vetor inicial: ";
    for(int i = 0; i < n; i++){
        cout << r[i] << " ";
    }
    cout << " " << endl;
    aux = n;
    for(int i = 0; i < n / 2; i++){
        aux--;
        r[i] = r[i] + r[aux];
        r[aux] = r[i] - r[aux];
        r[i] = r[i] - r[aux];
    }
    cout << "-----------------------------------" << endl;
    cout << "Vetor final: ";
    for(int i = 0; i < n; i++){
        cout << r[i] << " ";
    }
    cout << " " << endl;
    return 0;
}
