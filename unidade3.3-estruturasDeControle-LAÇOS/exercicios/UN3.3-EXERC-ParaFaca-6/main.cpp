#include <iostream>

using namespace std;

int main()
{
    int n, m, contadorN, contadorM, soma;
    contadorN = 0;
    contadorM = 0;
    soma = 0;
    do{
        cout << "Indique o valor de N: " << endl;
        cin >> n;
        if (n > 0){
            for(contadorN = 1; contadorN <= n; contadorN++){
                do{
                    cout << "Digite o valor de M: " << endl;
                    cin >> m;
                    if(m > 0){
                        cout << "Somatorio = ";
                        for (contadorM = 1; contadorM <= m; contadorM++){
                        soma = soma + contadorM;
                        if(contadorM == m){
                            cout << contadorM << " = " ;
                        } else {
                            cout << contadorM << " + ";
                        }
                    }
                    cout << soma << endl;
                    } else {
                        cout << "Valor invalido!" << endl;
                    }
                }while(m <= 0);
            }
        } else {
            cout << "Valor invalido!" << endl;
        }
    }while(n <= 0);


    return 0;
}
