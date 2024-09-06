#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

string leiaValorString(){
    string x;
    cin.ignore();
    getline(cin,x);
    return x;
}

float leiaValorFloat(){
    float x;
    cin >> x;
    return x;
}

void pegarValores(int n,string vetorNome[],float vetorNota[]){
    for(int i = 0; i < n; i++){
        cout << "[" << i + 1 << "]Nome: "; vetorNome[i] = leiaValorString();
        cout << "[" << i + 1 << "]Nota: "; vetorNota[i] = leiaValorFloat();
    }
}

void pesquisar(int n, string vetorNome[], float vetorNota[]){
    string nome;
    bool achou = false;
    int indice;
    cout << "Informe o nome de pesquisa: "; nome = leiaValorString();
    for(int i = 0; i < n; i++){
        if(vetorNome[i] == nome){
            achou = true;
            indice = i;
        }
    }
    if(achou){
            cout << "Encontrado! Nota do aluno: " << vetorNota[indice];
        }else{
            cout << "Aluno nao encontrado!";
        }
}

int main()
{
    int n;
    string vetorNome[30];
    float vetorNota[30];
    char maisUm;
    cout << "Informe a quantidade de estudantes: "; n = leiaValorInteiro();
    pegarValores(n,vetorNome,vetorNota);
    cout << "--------------------------------------------------------\n";
    do{
        pesquisar(n,vetorNome,vetorNota);
        cout << "\nDeseja fazer outra pesquisa? S/N "; maisUm = toupper(cin.get());
    }while(maisUm == 'S');

    return 0;
}
