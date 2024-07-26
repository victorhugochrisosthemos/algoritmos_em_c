#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
    int n,m,p,q;
    int matrix[10][10];
    int matrix_b[10][10];
    int matrix_final[10][10] = {{0}};


    cout << "Matriz A" << endl;
    do{
        cout << "Informe a quantidade de linhas:";
        cin >> n;
        cin.ignore();
    }while(n < 2 and n > 10);
    do{
        cout << "Informe a quantidade de colunas:";
        cin >> m;
        cin.ignore();
    }while(m < 2 and m > 10);
    cout << "Matriz B" << endl;
    do{
        cout << "Informe a quantidade de linhas:";
        cin >> p;
        cin.ignore();
    }while(p < 2 and p > 10);
    do{
        cout << "Informe a quantidade de colunas:";
        cin >> q;
        cin.ignore();
    }while(q < 2 and q > 10);
    for(int i = 0; i < n; i++){
        for(int j = 0;j < m; j++){
            matrix[i][j] = rand() % 10;
            //matrix[i][j] = j + 1;
        }
    }
    cout << "--------------------------------------------" << endl;
    cout << "Matriz A" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0;j < m; j++){
            cout << matrix[i][j] << "   ";
        }
        cout << " " << endl;
    }
    for(int i = 0; i < p; i++){
        for(int j = 0;j < q; j++){
            matrix_b[i][j] = rand() % 10;
            //matrix_b[i][j] = j + 1;
        }
    }
    cout << "--------------------------------------------" << endl;
    cout << "Matriz B" << endl;
    for(int i = 0; i < p; i++){
        for(int j = 0;j < q; j++){
            cout << matrix_b[i][j] << "   ";
        }
        cout << " " << endl;
    }
    cout << "--------------------------------------------" << endl;
    cout << "A x B" << endl;
    if(m == p){
        for(int i = 0;i < n; i++){
            for(int j = 0;j < q; j++){
                for(int k = 0; k < m; k++){
                    matrix_final[i][j] += matrix[i][k] * matrix_b[k][j];
                }
            }        }
        for(int i = 0; i < n; i++){
            for(int j = 0; j < q; j++){
                cout << matrix_final[i][j] << "   ";
            }
            cout << " " << endl;
        }
    } else{
        cout << "Erro" << endl;
    }

    return 0;
}
