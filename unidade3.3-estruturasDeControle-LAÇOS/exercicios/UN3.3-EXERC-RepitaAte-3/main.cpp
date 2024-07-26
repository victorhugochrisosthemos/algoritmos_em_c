#include <iostream>

using namespace std;

int main()
{
    float media;
    int contador;
    int num;
    contador = 0;
    media = 0;
    do {
        //Só deu certo achar o resto pq coloquei como inteiro, mas a questão não especificou isso
        cout << "Digite um numero inteiro: " << endl;
        cin >> num;
        if (num % 2 == 0 && num != 0){
                contador++;
                media = (media + num)/contador;
        }
        cout << "Media = " << media << endl;
    } while(num != 0);
    return 0;
}
