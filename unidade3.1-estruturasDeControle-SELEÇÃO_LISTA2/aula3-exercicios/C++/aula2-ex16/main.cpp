#include <iostream>

using namespace std;

int main()
{
    char sexo;
    float peso, altura;
    cout << "Qual eh o sexo ['M' ou 'F']? " << endl;
    cin >> sexo;
    cout << "Qual eh a altura? " << endl;
    cin >> altura;

    sexo = toupper(sexo);
    if (sexo == 'F'){
        peso = (62.1*altura) - 44.7;
    }
    else {
        peso = (72.7*altura) - 58;
    }

    cout << "O peso ideal eh: " << peso << endl;
    return 0;
}
