#include <iostream>
#include <cstdlib>
#define TMAX 15

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}
void gerarMatriz(int n, int m, int matrix[][TMAX+10]){
    for(int i = 0; i < n; i++){
        for(int  j = 0; j < m; j++){
            matrix[i][j] = rand() % 10;
        }
    }
}
void mostrarMatriz(int n, int m, int matrix[][TMAX+10]){
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            cout << matrix[i][j] << " ";
        }
        cout << "\n";
    }
}
void vetorSomaLinhas(int n, int m, int matrix[][TMAX+10], int vetorSoma[]){
    int soma;
    for(int i = 0; i < n; i++){
        soma = 0;
        for(int j = 0; j < m; j++){
            soma += matrix[i][j];
        }
        vetorSoma[i] = soma;
    }
}
void mostrarVetorSomaLinhas(int n, int m, int vetorSoma[TMAX]){
    cout << "Vetor resultante da soma dos elementos de cada linha da matriz" << endl;
    for(int i = 0; i < n; i++){
        cout << "[" << i << "]: " << vetorSoma[i] << endl;
    }
}

int main()
{
    int n,m,matrix[TMAX][TMAX + 10],vetorSoma[TMAX];
    cout << "Matrix N x M\nN(de 1 a 15) e M(de 1 a 25)\n";
    cout << "Informe o valor de N: "; n = leiaValorInteiro();
    cout << "Informe o valor de M: "; m = leiaValorInteiro();
    gerarMatriz(n,m,matrix);
    cout << "--------------------------------------------------\n";
    mostrarMatriz(n,m,matrix);
    cout << "--------------------------------------------------\n";
    //
    vetorSomaLinhas(n,m,matrix,vetorSoma);
    mostrarVetorSomaLinhas(n,m,vetorSoma);
    cout << "--------------------------------------------------\n";

    return 0;
}
