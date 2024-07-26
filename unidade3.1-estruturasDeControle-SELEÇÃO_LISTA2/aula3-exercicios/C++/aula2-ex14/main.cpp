#include <iostream>

using namespace std;

int main()
{
    int op1,op2,op3;
    string desc1,desc2,desc3;
    float preco1,preco2,preco3, total;
    cout << "Informe o codigo da alimentacao, bebida e da sobremesa, respectivamente: " << endl;
    cin >> op1 >> op2 >> op3;

    if (op1<1 && op1>4 && op2<5 && op2<6 && op3<7 && op3>9){
        cout << "Codigo invalido ou repeticao de algum item.";
    }
    else{
        switch (op1){
            case 01:
                desc1 = "Hamburguer";
                preco1 = 14.50;
                break;
            case 02:
                desc1 = "Chessburger";
                preco1 = 15.50;
                break;
            case 03:
                desc1 = "Cachorro Quente";
                preco1 = 10.00;
                break;
            case 04:
                desc1 = "Sanduiche Natural";
                preco1 = 13.50;
                break;
        }
        switch (op2){
            case 05:
                desc2 = "Refrigerante";
                preco2 = 5.00;
                break;
            case 06:
                desc2 = "Suco de Laranja";
                preco2 = 6.00;
                break;
        }
        switch (op3){
            case 07:
                desc3 = "Milk Shake";
                preco3 = 10.50;
                break;
            case 8:
                desc3 = "Sundae";
                preco3 = 13.00;
                break;
            case 9:
                desc3 = "Casquinha";
                preco3 = 10.00;
                break;
        }
    }
    total = preco1 + preco2 + preco3;
    cout << desc1 << " + " << desc2 << " + " << desc3 << endl;
    cout << "Total a pagar: " << total;
    return 0;
}
