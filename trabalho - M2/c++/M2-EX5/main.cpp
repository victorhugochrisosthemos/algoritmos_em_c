#include <iostream>

using namespace std;

int main()
{
    float res,com,ind,pagar,kwh_res,kwh_com,kwh_ind, kwh_geral;
    int id_cons,kwh_mes,contador;
    char tipo_cons,mais_cons;
    kwh_res = kwh_com = kwh_ind = kwh_geral = contador = 0;

    do{
        cout << "Codigo do tipo de consumidor" << endl;
        cout << "Informe o preco do kWh para o codigo residencial: " << endl;
        cin >> res;
        cin.ignore();
        cout << "Informe o preco do kWh para o codigo comercial: " << endl;
        cin >> com;
        cin.ignore();
        cout << "Informe o preco do kWh para o codigo industrial: " << endl;
        cin >> ind;
        cin.ignore();
    }while(ind <=0 || com <= 0 || ind <= 0);
    do{
        do{
        cout << "---------------------------------------------------" << endl;
        cout << "Dados do consumidor" << endl;
        cout << "Informe o numero de identificacao do consumidor: " << endl;
        cin >> id_cons;
        cin.ignore();
        cout << "Informe a quantidade de kWh consumido no mes: " << endl;
        cin >> kwh_mes;
        cin.ignore();
        }while(id_cons <= 0 || kwh_mes <= 0);
        do{
            cout << "[R] Residencial " << endl;
            cout << "[C] Comercial " << endl;
            cout << "[I] Industrial " << endl;
            cout << "Informe o tipo de consumidor:" << endl;
            cin >> tipo_cons;
            cin.ignore();
        }while(tipo_cons != 'R' && tipo_cons != 'C' && tipo_cons != 'I');
        switch(tipo_cons){
        case 'R':
            pagar = res*kwh_mes;
            kwh_res += kwh_mes;
            break;
        case 'C':
            pagar = com*kwh_mes;
            kwh_com += kwh_mes;
            break;
        case 'I':
            pagar = ind*kwh_mes;
            kwh_ind += kwh_mes;
            break;
        }
        kwh_geral += kwh_mes;
        contador++;

        cout << "----------------------------------------------" << endl;
        cout << "Informacoes do consumidor" << endl;
        cout << "Numero de identificacao: " << id_cons << endl;
        cout << "Total a pagar: " << pagar << endl;
        cout << "-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" << endl;
        cout << "Informacoes gerais" << endl;
        cout << "[R] Residencial: " << kwh_res << " kWh" << endl;
        cout << "[C] Comercial: " << kwh_com << " kWh" << endl;
        cout << "[I] Industrial: " << kwh_ind << " kWh" << endl;
        cout << "Quantidade media geral de consumo: " << kwh_geral / contador << " kWh" << endl;
        cout << "----------------------------------------------" << endl;

        do{
           cout << "Adicionar mais consumidor? [S/N]" << endl;
           cin >> mais_cons;
           cin.ignore();
        }while(mais_cons != 'S' && mais_cons != 'N');
    }while(mais_cons == 'S');


    return 0;
}
