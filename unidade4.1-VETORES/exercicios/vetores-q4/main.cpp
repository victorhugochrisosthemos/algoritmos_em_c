#include <iostream>

using namespace std;

#define TMAX 15

int main()
{
    int n;
    int v[TMAX];
    int maior,menor;
    do{
        cout << "Informe o tamanho N do vetor V" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 0 && n > 15);
    cout << "-----------------------------------" << endl;
    for(int i = 0;i < n; i++){
       cout << "Iteracao " << i + 1 << endl;
       cout << "Informe um valor para o vetor V:" << endl;
       cin >> v[i];
       cin.ignore();
       cout << "-----------------------------------" << endl;
       if(i == 0){
            maior = v[i];
            menor = v[i];
       } else{
            if(v[i] > maior){
                maior = v[i];
            }
            if(v[i] < menor){
                menor = v[i];
            }
       }
    }
    cout << "V = ";
    for(int i = 0;i<n;i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    cout << "Maior valor = " << maior << endl;
    cout << "Menor valor = " << menor << endl;
    return 0;
}
