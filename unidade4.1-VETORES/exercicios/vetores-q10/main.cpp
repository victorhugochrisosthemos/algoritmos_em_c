#include <iostream>

using namespace std;

#define TMAX 100

int main()
{
    int tamanhoVetor,contadorDeResto,contadorVetorPrimo;
    int x[TMAX],y[TMAX];
    contadorDeResto = contadorVetorPrimo = 0;
    do{
        cout << "Informe o tamanho N do vetor X:" << endl;
        cin >> tamanhoVetor;
        cin.ignore();
    }while(tamanhoVetor <= 0 && tamanhoVetor > 100);
    for(int i = 0; i < tamanhoVetor; i++){
        cout << "Iteracao " << i + 1 << endl;
        do{
            cout << "Informe um valor para o vetor:" << endl;
            cin >> x[i];
            cin.ignore();
        }while(x[i] == 0);
        cout << "---------------------------------" << endl;
    }
    for(int i = 0; i <tamanhoVetor; i++){
        contadorDeResto = 0;
        for(int j = 1; j <= x[i]; j++){
            if(x[i] % j == 0){
                contadorDeResto++;
            }
        }
        if(contadorDeResto <= 2){
           y[contadorVetorPrimo] = x[i];
           contadorVetorPrimo++;
        }
    }
    cout << "Vetor X = ";
    for(int i = 0; i < tamanhoVetor; i++){
        cout << x[i] << " ";
    }
    cout << " " << endl;
    cout << "Vetor Y = ";
    for(int i = 0; i < contadorVetorPrimo; i++){
        cout << y[i] << " ";
    }
    return 0;
}
