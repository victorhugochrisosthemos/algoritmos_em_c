#include <iostream>

using namespace std;

int main()
{
    int n, penultimo, ultimo, numero, contador;
    penultimo = 1;
    ultimo = 1;
    contador = 0;
    do{
        cout << "Informe o valor de N: " << endl;
        cin >> n;
    }while(n < 2);
    cout << "----------------------------------" << endl;
    cout << penultimo << endl;
    cout << ultimo << endl;
    if (n > 2){
        for(contador = 3; contador <= n; contador++){
            numero = penultimo + ultimo;
            cout << numero << endl;
            penultimo = ultimo;
            ultimo = numero;
    }
    }
    return 0;
}
