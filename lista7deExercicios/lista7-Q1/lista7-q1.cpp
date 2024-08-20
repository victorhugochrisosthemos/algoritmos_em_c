#include <iostream>
#include <cstdlib>
#define TMAX 10

using namespace std;

int leiaValorInteiro(){
    int n;
    cin >> n;
    return n;
}

void gerarMatriz(int n, int matrix[][TMAX]){
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            matrix[i][j] = rand() % 10;
        }
    }
}
void mostrarMatriz(int n, int matriz[][TMAX]){
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << matriz[i][j] << " ";
        }
        cout << "\n";
    }
}

void somaColuna2(int n, int matrix[][TMAX]){
    int soma = 0;
    for(int i = 0; i < n; i++){
        soma += matrix[i][1];
    }
    cout << "Soma da segunda coluna: " << soma << endl;
}
void multiplicarCadaLinha(int n, int matrix[][TMAX]){
    int multi, vezes[TMAX];
    for(int i = 0; i < n; i++){
        multi = 1;
        for(int j = 0; j < n; j++){
            multi *= matrix[i][j];
        }
        vezes[i] = multi;
    }
    cout << "Multiplicacao de cada linha" << endl;
    for(int i = 0; i < n; i++){
        cout << "[" << i << "]: " << vezes[i] << endl;
    }
}
void somaMatriz(int n, int matrix[][TMAX]){
    int soma = 0;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            soma += matrix[i][j];
        }
    }
    cout << "Soma dos elementos da matrix: " << soma << endl;
}
void somaDiagonalPrincipal(int n, int matrix[][TMAX]){
    int  soma = 0;
    for(int i = 0; i < n; i++){
        soma += matrix[i][i];
    }
    cout << "Soma da diagonal principal: " << soma << endl;
}
void permutaLinhas(int n, int matrix[][TMAX]){
    int p,q;
    cout << "Informe a linha P:"; cin >> p;
    cout << "Informe a linha Q: "; cin >> q;
    for(int i = 0; i < n; i++){
        matrix[p][i] = matrix[p][i] + matrix[q][i];
        matrix[q][i] = matrix[p][i] - matrix[q][i];
        matrix[p][i] = matrix[p][i] - matrix[q][i];
    }
    cout << "----------------------------------------------\n";
    mostrarMatriz(n,matrix);
}

int main()
{
    int n, matrix[TMAX][TMAX];
    cout << "Informe a ordem da matriz quadrada: "; n = leiaValorInteiro();
    gerarMatriz(n,matrix);
    mostrarMatriz(n,matrix);
    cout << "-------------------------------------------------\n";
    somaColuna2(n,matrix);
    cout << "--------------------------------------------------\n";
    multiplicarCadaLinha(n,matrix);
    cout << "--------------------------------------------------\n";
    somaMatriz(n,matrix);
    cout << "--------------------------------------------------\n";
    somaDiagonalPrincipal(n,matrix);
    cout << "--------------------------------------------------\n";
    permutaLinhas(n,matrix);

    return 0;
}
