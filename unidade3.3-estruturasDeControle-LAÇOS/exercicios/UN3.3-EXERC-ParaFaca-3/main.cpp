#include <iostream>

using namespace std;

int main()
{
    int contador;
    float soma;
    contador = 0;
    soma = 0;
    for (contador = 1; contador <= 100 ; contador++){
        soma = soma + 1.0/contador;
    }
    cout << soma;
    return 0;
}
