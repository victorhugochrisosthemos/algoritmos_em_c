/*  M1-EX2
04/09/2022
Trabalho avaliativo de algoritmos e programação I
Alunos: Victor Hugo Chrisosthemos Teixeira
        Ihoana Gatti Lopes

*/
#include <iostream>

using namespace std;

int main()
{
    float peso,planeta;
    char letra;

    cout << "Digite o peso em Kg do objeto na Terra: ";
    cin >>peso;
    cout << "Digite o codigo de outro planeta: ";
    cin >>letra;
    letra = toupper(letra);
    switch(letra){
        case 'A':
                planeta = peso*0.37/10;
                cout << "O peso em Mercurio e: " <<planeta;
                break;
        case 'B':
                planeta = peso*0.88/10;
                cout << "O peso em Venus e: " <<planeta;
                break;
        case 'C':
                planeta = peso*0.38/10;
                cout << "O peso em Marte e: " <<planeta;
                break;
        case 'D':
                planeta = peso*2.64/10;
                cout << "O peso em Jupiter e: " <<planeta;
                break;
        case 'E':
                planeta = peso*1.15/10;
                cout << "O peso em Saturno e: " <<planeta;
                break;
        case 'F':
                planeta = peso*1.17/10;
                cout << "O peso em Urano e: " <<planeta;
                break;
    }

    return 0;
}
