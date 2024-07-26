#include <iostream>

using namespace std;

int main()
{
    int num;
    string mes;
    cout << "Digite um numero correspondente a um mes do ano: " << endl;
    cin >> num;

    switch(num){
        case 1:
            mes="Janeiro";
            break;
        case 2:
            mes="Fevereiro";
            break;
        case 3:
            mes="Marco";
            break;
        case 4:
            mes="Abril";
            break;
        case 5:
            mes="Maio";
            break;
        case 6:
            mes="Junho";
            break;
        case 7:
            mes="Julho";
            break;
        case 8:
            mes="Agosto";
            break;
        case 9:
            mes="Setembro";
            break;
        case 10:
            mes="Outubro";
            break;
        case 11:
            mes="Novembro";
            break;
        case 12:
            mes="Dezembro";
            break;
        default:
            false;
            break;
    }
    if(num == false){
        cout << "O valor nao eh valido.";
    }
    else{
        cout << "O mes eh " << mes << endl;
    }

    return 0;
}
