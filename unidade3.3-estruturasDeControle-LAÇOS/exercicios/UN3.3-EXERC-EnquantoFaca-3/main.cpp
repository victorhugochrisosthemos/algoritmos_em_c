#include <iostream>

using namespace std;

int main()
{
    int num,contador,quantDivisores;
    contador = 1;
    quantDivisores = 0;
    cout << "Digite um numero inteiro: " << endl;
    cin >> num;
    cout << "Numero lido = " << num << endl;
    cout << "Divisores =  ";
    do{
        if(num % contador == 0){
            cout << contador << " ";
            quantDivisores++;
        }
        contador++;
    }while(num >= contador);
    cout << " " << endl;
    cout << "Quantidade de divisores = " << quantDivisores << endl;
    return 0;
}
