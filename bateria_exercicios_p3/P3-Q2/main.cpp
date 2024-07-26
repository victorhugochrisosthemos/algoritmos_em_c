#include <iostream>

using namespace std;

#define TMAX 20

int main()
{

    int n, v[TMAX], d[TMAX],cont;
    int f[TMAX] = {0};
    bool existe;
    cont = 0;
    do{
        cout << "Informe o tamanho do vetor: ";
        cin >> n;
    }while(n < 1 or n > TMAX);

    for(int i = 0; i < n; i++){
        do{
            cout << "V[" << i << "]: ";
            cin >> v[i];
            cin.ignore();
        }while(v[i] < 0);
    }

    cout << "--------------------------------" << endl;
    cout << "Vetor V: ";
    for(int i = 0; i < n; i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    cout << "--------------------------------" << endl;
    cout << "Vetor D: ";

    for(int i = 0; i < n; i++){
        existe = false;
        for(int j = 0; j < n; j++){
            if(v[i] == d[j]){
                existe = true;
            }
        }
        if(!existe){
            d[cont] = v[i];
            cont++;
        }
    }
    for(int i = 0; i < cont; i++){
        for(int j = 0; j < cont; j++){
            if(d[i] < d[j]){
                d[i] = d[i] + d[j];
                d[j] = d[i] - d[j];
                d[i] = d[i] - d[j];
            }
        }
    }

    for(int i = 0; i < cont; i++){
        cout << d[i] << " ";
    }
    cout << " " << endl;
    cout << "--------------------------------" << endl;
    cout << "Vetor F: ";
    for(int i = 0; i < cont; i++){
       for(int j = 0; j < n; j++){
          if(d[i] == v[j]){
            f[i] += 1;
          }
       }
    }
    for(int i = 0; i < cont; i++){
        cout << f[i] << " ";
    }

    return 0;
}
