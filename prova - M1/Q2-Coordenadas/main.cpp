#include <iostream>

using namespace std;

int main()
{
    int x,y;
    cout << "Informe o valor de X e Y: " << endl;
    cin >> x >> y;
    cout << "Coordenada de entrada: " << x << "," << y << endl;
    if(x == 0 && y == 0){
        cout << "Resposta: " << "Origem do sistema" << endl;
    } else {
        if(x > 0){
            if(y == 0){
                cout << "Resposta: " << "Eixo X" << endl;
            } else{
                if(y > 0){
                    cout << "Resposta: " << "Quadrante 1" << endl;
                } else{
                    cout << "Resposta: " << "Quadrante 4" << endl;
                }
            }
        } else{
            if(x == 0){
                cout << "Resposta: " << "Eixo Y" << endl;
            } else{
                if(y > 0){
                    cout << "Resposta: " << "Quadrante 2" << endl;
                } else{
                    cout << "Resposta: " << "Quadrante 3" << endl;
                }
            }
        }
    }
    return 0;
}
