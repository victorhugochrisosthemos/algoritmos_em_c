#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    char opcao;
    float area, base, altura;
    cout << "Digite uma das letras ['T', 'Q' ou 'R']: " << endl;
    cin >> opcao;

    opcao = toupper(opcao);
    switch(opcao){
        case 'T':
            cout << "Informe a base e a altura do triangulo, respectivamente:" << endl;
            cin >> base >> altura;
            area = base*altura/2;
            break;
        case 'Q':
            cout << "Informe o lado do quadrado: " << endl;
            cin >> base;
            area = pow(base,2);
            break;
        case 'R':
            cout << "Informe a base e a altura do retangulo respectivamente: " << endl;
            cin >> base >> altura;
            area = base*altura;
            break;
    }
    cout << "Area: " << area;
    return 0;
}
