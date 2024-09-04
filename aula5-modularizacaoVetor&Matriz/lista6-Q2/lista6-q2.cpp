#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

float leiaValorFloat(){
    float a;
    cin >> a;
    return a;
}

void pegarMedidasIniciais(int x,float valores[]){
    for(int i = 0; i < x; i++){
        cout << "[" << i+1 << "]: ";
        valores[i] = leiaValorFloat();
    }
}

void medidasSuavizadas(int n,float valores[]){
    cout << "[1]: " << valores[0] << endl;
    for(int i = 1; i < n - 1; i++){
        valores[i] = (valores[i-1] + valores[i] + valores[i+1])/3;
        cout << "[" << i+1 << "]: " << valores[i] << endl;
    }
    cout << "[" << n << "]: " << valores[n-1] << endl;
}

int main()
{
    int n;
    float valores[10];

    cout << "Informe o tamanho da serie: ";
    n = leiaValorInteiro();
    pegarMedidasIniciais(n,valores);
    cout << "---------------------------------------\n";
    medidasSuavizadas(n,valores);

    return 0;
}
