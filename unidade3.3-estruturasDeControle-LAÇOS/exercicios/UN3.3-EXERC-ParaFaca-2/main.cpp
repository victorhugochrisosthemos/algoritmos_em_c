#include <iostream>

using namespace std;

int main()
{
    int contador, soma;
    contador = 0;
    soma = 0;
    for (contador = 1; contador <= 100 ; contador++){
        soma = soma + contador;
    }
    cout << soma;
    return 0;
}
