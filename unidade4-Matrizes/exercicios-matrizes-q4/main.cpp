#include <iostream>
#include <cstdlib>
using namespace std;
#define TMAX 15
int main()
{
    int n,m,contador;
    int matrix[TMAX][TMAX + 10];
    int matrix_b[TMAX + 10][TMAX + 10] = {{0}};
    contador = 0;

    cout << "Matriz A" << endl;
    do{
        cout << "Informe a quantidade de linhas:";
        cin >> n;
        cin.ignore();
    }while(n < 1 and n > 15);
    do{
        cout << "Informe a quantidade de colunas:";
        cin >> m;
        cin.ignore();
    }while(m < 1 and m > 25);
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            matrix[i][j] = rand() % 10;
        }
    }
    cout << "---------------------------------------" << endl;
    cout << "Matriz original" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            cout << matrix[i][j] << "  ";
        }
        cout << " " << endl;
    }
    for(int i = 0; i < m; i++){
        for(int j = 0; j < n; j++){
            matrix_b[i][j] = matrix[j][i];
        }
    }
    cout << "---------------------------------------" << endl;
    cout << "Matriz B (matriz transposta de A)" << endl;
    for(int i = 0; i < m; i++){
        for(int j = 0; j < n; j++){
            cout << matrix_b[i][j] << "  ";
        }
        cout << " " << endl;
    }
    cout << "---------------------------------------" << endl;
    if(n == m){
        for(int i = 0; i < n; i++){
            for(int j = 0; i < n; j++){
                if(matrix[i][j] == matrix[j][i]){
                    contador++;
                }
            }
        }
        if(contador == n){
            cout << "Matriz A eh simetrica" << endl;
        } else{
            cout << "Matriz A nao eh simetrica" << endl;
        }
    } else{
        cout << "Matriz A nao eh simetrica" << endl;
    }

    return 0;
}
