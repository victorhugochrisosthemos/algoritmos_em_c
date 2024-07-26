#include <iostream>

using namespace std;

int main()
{
    float massa, massaAlt;
    int tempo;
    massa = 0;
    massaAlt = 0;
    tempo = 0;
    cout << "Digite o valor da massa em Kg: " << endl;
    cin >> massa;
    massa = massa*1000;
    massaAlt = massa;
    while(massaAlt > 0.5){
        massaAlt = massaAlt - massaAlt/2;
        tempo = tempo + 50;
    };
    cout << "Massa inicial: " << massa << " gramas" << endl;
    cout << "Massa final: " << massaAlt << " gramas" << endl;
    cout << "Tempo: " << tempo << " segundos" << endl;
    return 0;
}
