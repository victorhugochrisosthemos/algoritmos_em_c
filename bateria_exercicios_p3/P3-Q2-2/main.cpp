#include <iostream>
#define TMAX 20

using namespace std;

int main()
{
    int n, v[TMAX],contador;
    int f[TMAX] = {0};
    int d[TMAX] = {0};
    bool achou;
    contador = 0;
    do{
        cout << "Informe o tamanho do Vetor V: ";
        cin >> n;
    }while(n < 1 and n > 20);
    for(int i = 0; i < n; i++){
        do{
            cout << "V[" << i << "]: ";
            cin >> v[i];
        }while(v[i] < 1);
    }
    cout << "---------------------------------------" << endl;
    cout << "Vetor V: ";
    for(int i = 0; i < n; i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    cout << "---------------------------------------" << endl;
    cout << "Vetor D: ";
    for(int i = 0; i < n; i++){
        achou = false;
        for(int j = 0; j < TMAX; j++){
            if(v[i] == d[j]){
                achou = true;
            }
        }
        if(!achou){
            d[contador] = v[i];
            contador++;
        }
    }
    for(int i = 0; i < contador; i++){
        for(int j = 0; j < contador; j++){
            if(d[i] < d[j]){
                d[i] = d[i] + d[j];
                d[j] = d[i] - d[j];
                d[i] = d[i] - d[j];
            }
        }
    }

    for(int i = 0; i < contador; i++){
        cout << d[i] << " ";
    }
    cout << " " << endl;

    cout << "---------------------------------------" << endl;
    cout << "Vetor F: ";
    for(int i = 0; i < contador; i++){
        for(int j = 0; j < n; j++){
            if(d[i] == v[j]){
                f[i] += 1;
            }
        }
    }

    for(int i = 0; i < contador; i++){
        cout << f[i] << " ";
    }

    return 0;
}
