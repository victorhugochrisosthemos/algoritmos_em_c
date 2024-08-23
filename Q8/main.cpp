#include <iostream>

using namespace std;

typedef struct{
    string nome;
    int quantidadeVendas;
    float valorVendas;
}Vendedor;

void iniciarVariaveis(Vendedor v[]){
    for(int i = 0; i < 20; i++){
        v[i].nome = "";
        v[i].quantidadeVendas = 0;
        v[i].valorVendas = 0;
    }
}

void leiaVendedores(int n, Vendedor v[]){
    cout << "---------------------------------\n";
    cout << "Vendedor [" << n+1 << "] - Nome: ";
    //cin.ignore();
    getline(cin,v[n].nome);
}
char outraRodada(){
    char valor;
    cout << "Mais um? S/N ";
    //cin.ignore();
    valor = toupper(cin.get());
    //cin.ignore();
    return valor;
}

int indiceVendedorPeloNome(int n, Vendedor v[]){
    string nome;
    bool achou = false;
    int indice;
    do{
        cout << "\nInforme o nome do Vendedor: ";
        //cin.ignore();
        getline(cin,nome);
        for(int i = 0; i < n; i++){
            if(v[i].nome == nome){
                achou = true;
                indice = i;
            }
        }
        if(!achou){
            cout << "\nEsse nome nao esta na lista de vendedores. Tente outro valido!";
        }
    }while(achou == false);
    return indice;
}

void leiaVendas(int n, Vendedor v[]){
    int indice;
    float valorVenda;
    cout << "-----------------------------------\n";
    indice = indiceVendedorPeloNome(n,v);
    cout << "Informe o valor da venda: ";
    cin >> valorVenda;
    v[indice].valorVendas += valorVenda;
    v[indice].quantidadeVendas += 1;
}

void relatorioVendas(int n, Vendedor v[]){
    for(int i = 0; i < n; i++){
        cout << " - - - - - - - - - - - - \n";
        cout << "Nome: " << v[i].nome;
        cout << "\nQuantidade de vendas: " << v[i].quantidadeVendas;
        cout << "\nTotal arrecadado: " << v[i].valorVendas;
    }
}

int main()
{
    char maisUm;
    int contadorVendedores = 0;
    Vendedor vendedor[20];
    iniciarVariaveis(vendedor);
    do{
        leiaVendedores(contadorVendedores,vendedor);
        contadorVendedores++;
        maisUm = outraRodada();
        cin.ignore();
    }while(maisUm == 'S' and contadorVendedores < 20);
    do{
        leiaVendas(contadorVendedores,vendedor);
        maisUm = outraRodada();
        cin.ignore();
    }while(maisUm == 'S');
    relatorioVendas(contadorVendedores,vendedor);
    return 0;
}
