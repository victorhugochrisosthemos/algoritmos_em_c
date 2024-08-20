#include <iostream>

#define TMAX 10

using namespace std;

int leiaValorInteiro(){
    int n;
    cin >> n;
    return n;
}

void gerarMatriz(int n, int matrix[][TMAX]){
    for(int i = 0; i < n; i++){
        matrix[i][i] = 1;
        for(int j = 0; j < n; j++){
            if(i > j){
                matrix[i][j] = 0;
            }
            if(i < j){
                matrix[i][j] = 2;
            }
        }
    }
    matrix[0][0] = 10;
    matrix[n-1][n-1] = 20;
}

void mostrarMatriz(int n, int matrix[][TMAX]){
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << matrix[i][j] << " ";
        }
        cout << "\n";
    }
}

int main()
{
    int n,matrix[TMAX][TMAX];
    cout << "Informe o tamanho da matriz: "; n = leiaValorInteiro();
    gerarMatriz(n,matrix);
    mostrarMatriz(n,matrix);
    return 0;
}
