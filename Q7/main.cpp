#include <iostream>
#include <cstring>

#define TMAX 100
using namespace std;

typedef struct{
    string nome;
    float salarioFixo;
    float valorVendas;
    float comissao;
    float totalRecebido;
    int quantidadeVendas;
}Vendedor;

void leiaVendedores(int n,Vendedor v[]){
    cout << "[" << n << "] Nome: ";
    getline(cin,v[n].nome);
    cout << "Salario fixo: ";
    cin >> v[n].salarioFixo;
    cout << "Quantidade de vendas: ";
    cin >> v[n].quantidadeVendas;
    cout << "Valor das vendas: ";
    cin >> v[n].valorVendas;
}

char outraRodada(){
    char valor;
    cout << "Outra vez? S/N ";
    valor = toupper(cin.get());
    return valor;
}

void ordemAlfabeticaVendedores(int n, Vendedor v[]){
    string alfabeto = "abcdefghijklmnopqrstuvwxyz";
    int ultimoIndice,sucessaoTroca;
    for(unsigned int i = 0; i < alfabeto.size(); i++){
        ultimoIndice = n - 1;
        sucessaoTroca = 0;
        for(int j = 0; j < n; j++){
            if(alfabeto[i] == v[j].nome[0]){
                swap(v[sucessaoTroca].nome,v[ultimoIndice - sucessaoTroca].nome);
                sucessaoTroca++;
            }
        }
    }
}

void calcularComissao(int n, Vendedor v[]){
    for(int i = 0; i < n; i++){
        v[i].comissao = v[i].quantidadeVendas * v[i].valorVendas;
        if(v[i].quantidadeVendas >= 15){
            if(v[i].quantidadeVendas >= 30){
                v[i].comissao = v[i].comissao * 0.3;
            }else{
                v[i].comissao = v[i].comissao * 0.22;
            }
        }else{
            v[i].comissao = v[i].comissao * 0.1;
        }
    }
}

void calcularTotalRecebido(int n, Vendedor v[]){
    for(int i = 0; i < n; i++){
        v[i].totalRecebido = v[i].salarioFixo + v[i].comissao;
    }
}

void relatorioVendedores(int n, Vendedor v[]){
    ordemAlfabeticaVendedores(n,v);
    calcularComissao(n,v);
    calcularTotalRecebido(n,v);
    cout << "\n----------------------------------\n";
    cout << "Relatorio dos vendedores";
    cout << "\n----------------------------------\n";
    for(int i = 0; i < n; i++){
        cout << v[i].nome << endl;
        cout << "Quantidade vendida: " << v[i].quantidadeVendas << endl;
        cout << "Salario fixo: " << v[i].salarioFixo << endl;
        cout << "Valor da venda: " << v[i].valorVendas << endl;
        cout << "Comissao: " << v[i].comissao << endl;
        cout << "Total recebido: " << v[i].totalRecebido << endl;
        cout << " - - - - - - - - - - - - - - - - - - - \n";
    }
}

int main()
{
    char maisUm;
    Vendedor vendedores[TMAX];
    int contadorVendedores = 0;
    do{
        leiaVendedores(contadorVendedores,vendedores);
        cin.ignore();
        contadorVendedores++;
        maisUm = outraRodada();
        cin.ignore();
    }while(maisUm == 'S');
    relatorioVendedores(contadorVendedores,vendedores);
    return 0;
}
