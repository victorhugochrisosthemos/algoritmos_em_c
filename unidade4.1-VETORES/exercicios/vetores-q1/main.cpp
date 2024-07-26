#include <iostream>

using namespace std;

#define TMAX 20

int main()
{
    string nome[TMAX], acima_media[TMAX];
    float nota[TMAX];
    int n,j,a;
    float soma,media;
    soma = j = a = 0;
    do{
        cout << "Informe a quantidade N de estudantes:" << endl;
        cin >> n;
        cin.ignore();
    }while(n >= 0 && n > 20);
    cout << "----------------------------------" << endl;
    for(int i = 0; i < n; i++){
        cout << "Iteracao " << i << endl;
        do{
            cout << "Informe o nome do estudante: " << endl;
            getline(cin,nome[i]);
        }while(nome[i] == " ");
        do{
            cout << "Informe a nota do estudante: " << endl;
            cin >> nota[i];
            cin.ignore();
        }while(nota[i] < 0);
        cout << "----------------------------------" << endl;
        soma += nota[i];
    }
    media = soma / n;
    for(int i = 0; i < n; i++){
        if(nota[i] < media){
            j++;
        } else{
            acima_media[a] = nome[i];
            a++;
        }
    }
    cout << "Nomes dos estudantes acima da media:" << endl;
    for(int i = 0; i < a; i++){
        cout << acima_media[i] << " / ";
    }
    cout << " " << endl;
    cout << j << " estudante(s) abaixo da media";
    return 0;
}
