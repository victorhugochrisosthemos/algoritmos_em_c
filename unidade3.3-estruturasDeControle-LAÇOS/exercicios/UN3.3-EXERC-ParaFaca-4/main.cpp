#include <iostream>

using namespace std;

int main()
{
    int contador, numerador, denominador;
    float soma;
    contador = 0;
    soma = 0;
    numerador = 3;
    denominador = 2;
    for (contador = 1; contador <= 20 ; contador++){
        if(contador > 1){
            numerador = numerador + 2;
            denominador = denominador + contador*2;
        }
        soma = soma + float(numerador)/denominador;
    }
    cout << soma;
    return 0;
}
