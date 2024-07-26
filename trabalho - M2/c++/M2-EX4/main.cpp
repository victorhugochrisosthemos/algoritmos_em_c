#include <iostream>

using namespace std;

int main()
{
    char ponto,winner;
    string ganhador;
    int left,right;
    right = left = 0;
    do{
        do{
            cout << "---------------------------------" << endl;
            cout << "Ponto de quem? E/D" << endl;
            cin >> ponto;
            cin.ignore();
            if (ponto != 'E' && ponto != 'D'){
                cout << "Dado incorreto! Digite D ou E" << endl;
            }
        }while(ponto != 'E' && ponto != 'D');
        switch(ponto){
            case 'E':
                left++;
                break;
            case 'D':
                right++;
                break;
        }
        cout << "Placar: Esquerda " << left << " X " << right << " Direita" << endl;
        if(left >= 21 || right >= 21){
            if(left >= right + 2){
                winner = 'E';
                ganhador = "Esquerda";
            }
            if(right >= left + 2){
                winner = 'D';
                ganhador = "Direita";
            }
        }
    }while(winner != 'D' && winner != 'E');
    cout << "Ganhador: " << ganhador << endl;
    return 0;
}
