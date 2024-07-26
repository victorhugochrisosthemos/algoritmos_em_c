#include <iostream>

using namespace std;

int main()
{
    int idade,pagamento,desconto50,taxa,descontoM,mensalidade,total;
    float pagar, desconto;
    char sexo,plano;
    string escolha;
    cout << "Informe a idade do cliente:" << endl;
    cin >> idade;
    cin.ignore();
    cout << "Informe o sexo [F/M]:" << endl;
    cin.get(sexo);
    cin.ignore();
    cout << "Informe o plano desejado:" <<endl;
    cout << "[A] Plano basico" << endl;
    cout << "[B] Plano intermediario" << endl;
    cout << "[C] Plano especial" << endl;
    cin.get(plano);
    cin.ignore();
    cout << "Informe a forma de pagamento:" << endl;
    cout << "[1] Em dinheiro" << endl;
    cout << "[2] Cartao de crédito" << endl;
    cin >> pagamento;
    cin.ignore();
    if(idade > 35){
        if(sexo == 'M' && idade > 50 && plano == 'C'){
            desconto50 = 50;
        } else{
            desconto50 = 0;
        }
        taxa = 0;
        descontoM = 0;
    } else{
        if(sexo == 'F' && idade > 18 && idade < 25 && plano != 'A'){
            descontoM = 10;
        }else{
            descontoM = 0;
        }
        taxa = 120;
        desconto50 = 0;
    }
    switch(plano){
        case 'A':
            escolha = "Plano basico";
            mensalidade = 200;
            break;
        case 'B':
            escolha = "Plano intermediario";
            mensalidade = 350;
            break;
        case 'C':
            escolha = "Plano especial";
            mensalidade = 500;
            break;
    }
    total = 120 + mensalidade;
    if(pagamento == 1){
        pagar = (taxa + mensalidade*(1 - float(descontoM)/100) - desconto50)*0.9;
        desconto = total - pagar;
    } else {
        pagar = (taxa + mensalidade*(1 - float(descontoM)/100) - desconto50);
        desconto = total - pagar;
    }
    cout << "---------------------------------------" << endl;
    cout << "Plano escolhido: " << plano << endl;
    cout << "Valor da mensalidade: R$" << mensalidade << ",00"<< endl;
    cout << "Taxa de inscricao: R$ 120,00" << endl;
    cout << "Desconto final: " << desconto << endl;
    cout << "Total a ser pago: " << pagar << endl;

    return 0;
}
