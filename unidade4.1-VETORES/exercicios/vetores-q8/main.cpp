#include <iostream>

using namespace std;

#define TMAX 15

int main()
{
    int n;
    int v[TMAX];
    do{
        cout << "Informe o tamanho N do vetor V:" << endl;
        cin >> n;
        cin.ignore();
    }while(n<0 && n>15);
    cout << "-----------------------------------" << endl;
    for(int i = 0; i < n ; i++){
        cout << "Iteracao " << i + 1 << endl;
        do{
            cout << "Informe um valor para o vetor:" << endl;
            cin >> v[i];
            cin.ignore();
        }while(v[i] == 0);
        cout << "-----------------------------------" << endl;
    }
    cout << "Vetor inicial: ";
    for(int i = 0;i < n; i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    for(int i = 0;i < n ; i++){
        for(int j = i + 1; j < n; j++){
           if(v[j] < v[i]){
                v[i] = v[i] + v[j];
                v[j] = v[i] - v[j];
                v[i] = v[i] - v[j];
            }
        }
    }
    cout << "Vetor em ordem crescente: ";
    for(int i = 0;i < n; i++){
        cout << v[i] << " ";
    }
    return 0;
}
