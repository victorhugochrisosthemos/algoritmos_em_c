#include <iostream>

using namespace std;

int main()
{
    float soma,valor;
    string nome;
    int quant;
    char maisVenda,maisVendedor;
    soma = 0;
    do{
       cout << "Qual o nome do funcionario: " << endl;
        getline(cin,nome);
        do{
            cout << "Qual o preco unitario do produto vendido:" << endl;
            cin >> valor;
            cin.ignore();
            cout << "Qual a quantidade do produto vendido:" << endl;
            cin >> quant;
            cin.ignore();
            soma += quant*valor;
            cout << "Nome: " << nome << endl;
            cout << "Total de vendas: R$" << soma << endl;
            cout << "O salario do funcionario eh: " << soma*0.3 << endl;
            cout << "Este funcionario tem mais uma venda [S/N]? " << endl;
            cin >> maisVenda;
        }while(maisVenda == 'S');
        cout << "Deseja digitar os dados de mais um vendedor [S/N]? " << endl;
        cin >> maisVendedor;
    } while (maisVendedor == 'S');
    return 0;
}
