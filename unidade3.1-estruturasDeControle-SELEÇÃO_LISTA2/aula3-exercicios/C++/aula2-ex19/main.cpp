#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
    string nome;
    char cat;
    float sal, novoSal;
    cout << "Qual eh o nome do funcionario? " << endl;
    getline(cin,nome);
    cout << "Qua eh sua categoria? " << endl;
    cin >> cat;
    cout << "Qual eh o salario atual? " << endl;
    cin >> sal;

    cat = toupper(cat);
    switch (cat){
        case 'A':
        case 'C':
        case 'F':
        case 'H':
            novoSal = sal*1.1;
            break;
        case 'B':
        case 'D':
        case 'E':
        case 'G':
            novoSal = sal*1.15;
            break;
        case 'I':
        case 'K':
        case 'R':
            novoSal = sal*1.2;
            break;
        case 'J':
        case 'S':
            novoSal = sal*1.25;
            break;
    }
    cout << "Funcionario: " << nome << endl;
    cout << "Salario reajustado: " << novoSal << endl;

    return 0;
}
