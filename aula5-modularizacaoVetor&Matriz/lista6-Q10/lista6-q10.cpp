#include <iostream>
#define TMAX 100

using namespace std;

int pegarValorInteiro(){
    int n;
    cin >> n;
    return n;
}

void pegarVetor(int n,int vetor[]){
    for(int i = 0; i < n; i++){
        cout << "[" << i + 1 << "]: ";
        vetor[i] = pegarValorInteiro();
    }
}

bool isPrimo(int x){
    bool valor;
    int cont = 0;
    for(int i = 1; i <= x; i++){
        if(x % i == 0){
            cont++;
        }
    }
    if(cont > 2){
        valor = false;
    }else{
        valor = true;
    }
    return valor;
}

void gerarVetorY(int &contY, int n, int vetorX[], int vetorY[]){
    for(int i = 0; i < n; i++){
        if(isPrimo(vetorX[i])){
            vetorY[contY] = vetorX[i];
            contY++;
        }
    }
}

void mostrarVetor(int x, int vetor[]){
    for(int i = 0; i < x; i++){
        cout << "[" << i + 1 << "]: " << vetor[i] << endl;
    }
}

int main()
{
    int n,vetorX[TMAX],vetorY[TMAX], contY = 0;
    cout << "Informe o tamanho do vetor X: "; n = pegarValorInteiro();
    pegarVetor(n,vetorX);
    cout << "-----------------------------------------\n";
    gerarVetorY(contY, n, vetorX,vetorY);
    mostrarVetor(n,vetorX);
    cout << "--------------------------------------------\n";
    mostrarVetor(contY,vetorY);
    return 0;
}
