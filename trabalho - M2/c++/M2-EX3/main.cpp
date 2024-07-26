#include <iostream>

using namespace std;

int main()
{
    int contador,n;
    float m,soma,maior,menor;
    soma = 0;
    contador = 1;
    do{
        cout << "Informe a quantidade N de termos: " << endl;
        cin >> n;
        cin.ignore();
    }while(n <= 0);
    while(contador <= n){
        do{
            cout << "Valor " << contador << ". Informe um numero real:" << endl;
            cin >> m;
            cin.ignore();
        }while(m <= 0);
        soma += m;

        if(contador == 1){
            maior = m;
            menor = m;
        } else{
            if(m > maior){
                maior = m;
            }
            if(m < menor){
                menor = m;
            }
        }

        contador++;
    }
    cout << "Media: " << soma / n << endl;
    cout << "Menor: " << menor << endl;
    cout << "Maior " << maior << endl;

    return 0;
}
