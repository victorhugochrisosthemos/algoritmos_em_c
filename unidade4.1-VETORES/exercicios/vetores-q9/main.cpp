#include <iostream>

using namespace std;

#define TMAX 30

int main()
{
    char mais;
    int n;
    string pesq;
    string nome[TMAX];
    float nota[TMAX];
    do{
        cout << "Informe a quantidade N de estudantes:" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 0 && n > 30);
    cout << "------------------------------------------" << endl;
    for(int i = 0; i < n; i++){
        cout << "Iteracao " << i+1 << endl;
        do{
            cout << "Informe o nome do estudante:" << endl;
            getline(cin,nome[i]);
        }while(nome[i] == " ");
        do{
            cout << "Informe a nota do estudante:" << endl;
            cin >> nota[i];
            cin.ignore();
        }while(nota[i] < 0);
        cout << "------------------------------------------";
    }
    do{
    cout << "Informe um nome de pesquisa:" << endl;
    getline(cin,pesq);
    for(int i = 0; i < n; i++){
        if(nome[i] == pesq){
            cout << "Nota do estudante: " << nota[i] << endl;
        }
        if(nome[i] != pesq && i == n){
            cout << "Pessoa inexistente" << endl;
        }
    }
    cout << "Fazer outra pesquisa? S/N" << endl;
    cin.get(mais);
    cin.ignore();
    }while(mais == 'S');
    return 0;
}
