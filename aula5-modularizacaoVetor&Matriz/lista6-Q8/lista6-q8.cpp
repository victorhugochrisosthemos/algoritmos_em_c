#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

void leiaVetor(int n, int vetor[]){
    for(int i = 0; i < n; i++){
        cout << "[" << i + 1 << "]: ";
        vetor[i] = leiaValorInteiro();
    }
    cout << "-------------------------------------------\n";
}

void ordemCrescente(int n, int vetor[]){
    for(int i = 0; i < n; i++){
       for(int j = 0; j < n; j++){
            if(vetor[i] < vetor[j]){
                vetor[i] = vetor[i] + vetor[j];
                vetor[j] = vetor[i] - vetor[j];
                vetor[i] = vetor[i] - vetor[j];
            }
       }
    }
}

void mostrarVetor(int n, int vetor[]){
    cout << "Vetor X: ";
    for(int i = 0; i < n; i++){
        cout << vetor[i] << " ";
    }
}

int main()
{
    int n, vetorX[15];
    cout << "Informe o tamanho do vetor: "; n = leiaValorInteiro();
    leiaVetor(n,vetorX);
    ordemCrescente(n,vetorX);
    mostrarVetor(n,vetorX);
    return 0;
}
