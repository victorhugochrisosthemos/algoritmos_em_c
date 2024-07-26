#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int contador,r[TMAX],s[2*TMAX],x[TMAX];
    bool achou;
    contador = 0;
    cout << "Vetor R" << endl;
    for(int i = 0; i < TMAX; i++){
       cout << "R[" << i + 1 << "]:";
       cin >> r[i];
       cin.ignore();
    }

    cout << "Vetor S" << endl;
    for(int i = 0; i < 2*TMAX; i++){
       cout << "S[" << i + 1 << "]:";
       cin >> s[i];
       cin.ignore();
    }

    for(int i = 0; i < TMAX; i++){
        for(int j = 0; j < 2*TMAX; j++){
            if(r[i] == s[j]){
                achou = false;
                for(int k = 0; k < contador; k++){
                    if(r[i] == x[k]){
                        achou = true;
                        break;
                    }
                }
                if(!achou){
                    x[contador] = r[i];
                    contador++;
                }
            }
        }
    }

    cout << "Vetor R = ";
    for(int i = 0; i < TMAX; i++){
        cout << r[i] << " ";
    }

    cout << "\nVetor S = ";
    for(int i = 0; i < 2*TMAX; i++){
        cout << s[i] << " ";
    }

    cout << "\nVetor X = ";
    for(int i = 0; i < contador; i++){
        cout << x[i] << " ";
    }

    return 0;
}
