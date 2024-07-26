#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    float soma1,soma2;
    int contador;
    soma1 = soma2 = 0;
    contador = 1;
    do{
        soma1 = soma2;
        soma2 = soma1 + 1 / pow(contador,contador);
            cout << "Contador: " << contador << endl;
            cout << "Calculo: 1/ " << contador << " ^ " << contador << " = " << 1 / pow(contador,contador)<< endl;
            cout << "Soma1: " << soma1 << endl;
            cout << "Soma2: " << soma2 << endl;
            cout << "Soma2 - Soma1: " << abs(soma2 - soma1) << endl;
            cout << "--------------------------------------------------" << endl;

        contador++;
    }while(abs(soma2 - soma1) > 0.001);
    cout << "S = " << soma2 << endl;
    return 0;
}
