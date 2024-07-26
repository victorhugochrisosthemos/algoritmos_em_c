#include <iostream>

using namespace std;

int main()
{
    //UN3.3-EXERC-EnquantoFaca-2
    int quebrados, total,horas;
    horas = 1;
    quebrados = 0;
    while(horas < 16){
        if(horas > 1){
            quebrados = quebrados*3;
            total += quebrados;
            horas++;
        }
        else{
            quebrados = 1;
            total = 1;
            horas++;
        }

    }
    cout << "Quantidade de biscoitos quebrados: " << total;
    return 0;
}
