/*  M1-EX1
04/09/2022
Trabalho avaliativo de algoritmos e programação I
Alunos: Victor Hugo Chrisosthemos Teixeira
        Ihoana Gatti Lopes

*/

#include <iostream>

using namespace std;

int main()
{
    float peso, altura;

    cout << "Digite o peso do atleta: ";
    cin >> peso;

    cout << "Digite a altura do atleta: ";
    cin >> altura;

    if (peso >= 65.0 && peso <= 100.0){
        if (altura >= 1.7 && altura <= 1.95){
            cout << "ACEITO";
        }
        else{
            cout << "RECUSADO POR ALTURA";
        }
    }
    else{
        if (altura >= 1.7 && altura <= 1.95){
            cout << "RECUSADO POR PESO";
        }
        else{
            cout << "TOTALMENTE RECUSADO";
        }
    }

    return 0;
}
