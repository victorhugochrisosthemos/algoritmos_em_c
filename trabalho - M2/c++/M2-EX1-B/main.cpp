#include <iostream>

using namespace std;

int main()
{
    int n,resto, divisao,termos,contador;
    contador = 0;
    do{
        cout << "Escreva a quantidade N de termos:" << endl;
        cin >> n;
        cin.ignore();
    }while(n <= 0);
    if(n == 1){
        cout << "1" << endl;
    }
    else{
        if(n == 2){
            cout << "1 , 4" << endl;
        }
        else{
            resto = n % 3;
            divisao = n / 3;
            for(int i = 1; i <= divisao; i++){
                contador++;
                cout << contador << " ";
                cout << contador + 3 << " ";
                cout << contador + 3 << " ";
            }
            if(resto == 1){
                cout << contador + 1 << " ";
            }
            if(resto == 2){
                    cout << contador + 1 << " ";
                    cout << contador + 4 << " ";
            }
        }

    }
    return 0;
}
