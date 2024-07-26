#include <iostream>

using namespace std;

int main()
{
    float pol;
    cout << "Indique o indice de poluicao: " << endl;
    cin >> pol;
    if (pol>=0.3){
        if(pol>=0.4){
            if(pol>=0.5){
                cout << "As industrias da lista A, B e C devem ser chamadas";
            }
            else{
                cout << "As industrias da lista B devem ser chamadas";
            }
        }
        else {
            cout << "As industrias da lista A devem ser chamadas";
        }
    }
    return 0;
}
