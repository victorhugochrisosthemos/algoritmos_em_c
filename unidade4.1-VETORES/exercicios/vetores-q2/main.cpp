#include <iostream>

using namespace std;

#define TMAX 20

int main()
{
    int n;
    float v[TMAX],m[TMAX];
    do{
        cout << "Informe o tamanho N do vetor V:" << endl;
        cin >> n;
        cin.ignore();
    }while(n <= 0 && n > 20);
    for(int i = 0; i < n; i++){
        cout << "Iteracao " << i + 1 << endl;
            cout << "Informe um valor:" << endl;
            cin >> v[i];
            cin.ignore();
    }
    m[0] = v[0];
    m[n-1] = v[n-1];
    for(int i = 1;i < n - 1; i++){
            m[i] = (v[i - 1] + v[i] + v[i + 1]) / 3;
    }
    cout << "Valores iniciais: ";
    for(int i = 0; i < n; i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    cout << "Valores suavizados: ";
    for(int i = 0; i < n; i++){
        cout << m[i] << " ";
    }
    return 0;
}
