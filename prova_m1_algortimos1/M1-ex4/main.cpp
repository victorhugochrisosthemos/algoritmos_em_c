/*  M1-EX4
04/09/2022
Trabalho avaliativo de algoritmos e programação I
Alunos: Victor Hugo Chrisosthemos Teixeira
        Ihoana Gatti Lopes

*/
#include <iostream>

using namespace std;

int main()
{
    int op1,op2,op3;
    float alim,bebida,sobre,total;
    string desc1,desc2,desc3;

    cout << "Deseja qual item de alimentacao? " << endl;
    cin >> op1;
    cout << "Deseja qual item de bebida? " << endl;
    cin >> op2;
    cout << "Deseja quual item de sobremesa? " << endl;
    cin >> op3;

    if (op1>1 && op1<4 && op2>5 && op2<6 && op3>7 && op3<9){
        cout << "Erro";
    }
    else{
        switch (op1){
            case 1:
                alim=30.5;
                desc1="Hamburguer";
                break;
            case 2:
                alim=25.5;
                desc1="Chessburguer";
                break;
            case 3:
                alim=18.0;
                desc1="Cachorro Quente";
                break;
            case 4:
                alim=20.5;
                desc1="Sanduiche Natural";
                break;
        }
        switch (op2){
            case 5:
                bebida=6.5;
                desc2="Refrigerante";
                break;
            case 6:
                bebida=9.5;
                desc2="Suco Natural";
                break;
        }
        switch (op3){
            case 7:
                sobre=15.5;
                desc3="Milk Shake";
                break;
            case 8:
                sobre=20.0;
                desc3="Sundae";
                break;
            case 9:
                sobre=15.0;
                desc3="Casquinha";
                break;
        }
        total = alim + bebida + sobre;

        cout << "\nAlimentacao: " << desc1 << " R$ " << alim << endl;
        cout << "Bebida: " << desc2 << " R$ " << bebida << endl;
        cout << "Sobremesa: " << desc3 << " R$ " << sobre << endl;
        cout << "Total a pagar: R$ " << total << endl;

    }

    return 0;
}
