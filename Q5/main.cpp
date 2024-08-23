#include <iostream>

using namespace std;

typedef struct{
    string profissao;
    int codigo;
}Profissao;

void leiaProfissoes(int n, Profissao p[]){
    cout << "Insira o nome da profissao: ";
    getline(cin,p[n].profissao);
    cout << "Insira o codigo da profissao: ";
    cin >> p[n].codigo;
}

char maisUmaRodada(){
    char valor;
    cout << "Mais um? S/N ";
    valor = toupper(cin.get());
    return valor;
}

void pesquisarCodigo(int n, Profissao p[]){
    int pesqCodigo, indice;
    bool achou = false;
    cout << "\n---------------------------------------------\n";
    cout << "PESQUISA" << endl;
    cout << "Insira um codigo de pesquisa: ";
    cin >> pesqCodigo;
    for(int i = 0; i < n; i++){
        if(pesqCodigo == p[i].codigo){
            achou = true;
            indice = i;
            break;
        }
    }
    if(achou){
        cout << "Profissao encontrada!\n";
        cout << "Codigo: " << p[indice].codigo << " // Profissao: " << p[indice].profissao << endl;
    }else{
        cout << "Profissao NAO encontrada!\n";
    }
}

int main()
{
    char maisUm;
    Profissao profissoes[20];
    int contadorProfissoes = 0;
    do{
        leiaProfissoes(contadorProfissoes,profissoes);
        cin.ignore();
        contadorProfissoes++;
        maisUm = maisUmaRodada();
        cin.ignore();
    }while(maisUm == 'S' and contadorProfissoes < 20);
    do{
        pesquisarCodigo(contadorProfissoes,profissoes);
        maisUm = maisUmaRodada();
        cin.ignore();
    }while(maisUm == 'S');
    return 0;
}
