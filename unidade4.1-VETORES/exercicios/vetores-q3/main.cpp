#include <iostream>

using namespace std;

#define TMAX 15

int main()
{
    float v[TMAX],w[TMAX];
    int n;
    float pe;
    do{
        cout << "Informe o tamanho N dos vetores V e W:" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 0 && n > 15);
    cout << "-----------------------------------" << endl;
    for(int i = 0; i < n; i++){
        cout << "iteracao " << i + 1 << endl;
        do{
            cout << "Informe um valor para o vetor V:" << endl;
            cin >> v[i];
            cin.ignore();
        }while(v[i] == 0);
        do{
            cout << "Informe um valor para o vetor W:" << endl;
            cin >> w[i];
            cin.ignore();
        }while(w[i] == 0);
        cout << "-----------------------------------" << endl;
        pe += v[i]*w[i];
    }
    cout << "V = ";
    for(int i = 0; i < n; i++){
        cout << v[i] << " ";
    }
    cout << " " << endl;
    cout << "W = ";
    for(int i = 0; i < n; i++){
        cout << w[i] << " ";
    }
    cout << " " << endl;
    cout << "V + W = ";
    for(int i = 0; i < n; i++){
        cout << v[i] + w[i] << " ";
    }
    cout << " " << endl;
    cout << "V - W = ";
    for(int i = 0; i < n; i++){
        cout << v[i] - w[i] << " ";
    }
    cout << " " << endl;
    cout << "V * W = ";
    for(int i = 0; i < n; i++){
        cout << v[i] * w[i] << " ";
    }
    cout << " " << endl;
    cout << "V / W = ";
    for(int i = 0; i < n; i++){
        cout << v[i] / w[i] << " ";
    }
    cout << " " << endl;
    if(pe == 0){
        // Por causa do laços iniciais, o valor nunca será "0"
        cout << "V e W sao vetores ortogonais";
    }else{
        cout << "Produto escalar = " << pe;
    }
    return 0;
}
