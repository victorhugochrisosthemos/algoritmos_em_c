#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}
bool validaN(int n){
    bool valor;
    if(n >= 1 and n <= 10){
        valor = true;
    }else{
        valor = false;
    }
    return valor;
}
void pegarVetor(int n,int vetor[]){
    for(int i = 0; i < n; i++){
        cout << "[" << i + 1 << "]: ";
        vetor[i] = leiaValorInteiro();
    }
    cout << "---------------------------------------\n";
}
void primeiroPeloUltimo(int n, int vetor[]){
    int cont = n - 1;
    for(int i = 0; i < n/2; i++){
        vetor[i] = vetor[i] + vetor[cont];
        vetor[cont] = vetor[i] - vetor[cont];
        vetor[i] = vetor[i] - vetor[cont];
        cont--;
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
    int n, vetorX[10];
    cout << "Informe a quantidade N de elementos: "; n = leiaValorInteiro();
    if(validaN(n)){
        cout << "Vetor" << endl;
        pegarVetor(n,vetorX);
        primeiroPeloUltimo(n,vetorX);
        mostrarVetor(n,vetorX);
    }else{
        cout << "Valor de N invalido!";
    }
    return 0;
}
