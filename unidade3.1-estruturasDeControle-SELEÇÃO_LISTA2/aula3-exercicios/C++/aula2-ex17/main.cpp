#include <iostream>

using namespace std;

int main()
{
    int qtd,codigo,n;
    float valor, promocao;
    string produto;
    cout << "Qual eh o codigo do produto? " << endl;
    cin >> codigo;
    cout << "Qual a quantidade? " << endl;
    cin >> qtd;

    if (codigo < 100 && codigo > 103){
        cout << "Erro";
    }
    else{
        switch(codigo){
            case 100:
                produto = "Cachorro quente + refrigerante";
                valor = 13.00;
                break;
            case 101:
                produto = "Misto quente + refrigerante";
                valor = 12.50;
                break;
            case 102:
                produto = "Misto frio + refrigerante";
                valor = 12.00;
                break;
            case 103:
                produto = "Queijo quente + refrigerante";
                valor = 12.25;
                break;
        }
        n = qtd ;
        qtd = n - n/5; // Nessa divisao vai pegar so o quociente
        promocao = valor*qtd;

        cout << "Item escolhido: " << produto << endl;
        cout << "Valor a pagar: " << promocao << endl;
    }

    return 0;
}
