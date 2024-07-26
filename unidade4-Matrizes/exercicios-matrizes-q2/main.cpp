#include <iostream>
#include <cstdlib>

using namespace std;
#define TMAX 15
int main()
{

    int n,m,total;
    int matrix[TMAX][TMAX + 10];
    int soma[TMAX];

    cout << "Matriz A" << endl;
    do{
        cout << "Quantidade de linhas:";
        cin >> n;
        cin.ignore();
    }while(n < 1 and n > 15);
    do{
        cout << "Quantidade de colunas:";
        cin >> m;
        cin.ignore();
    }while(m < 1 and m > 25);
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            matrix[i][j] = rand() % 10;
        }
    }
    cout << "----------------------------------" << endl;
    cout << "Matriz gerada" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            cout << matrix[i][j] << " ";
        }
        cout << " " << endl;
    }
    cout << "----------------------------------" << endl;
    for(int i = 0; i < n; i++){
        soma[i]  = 0;
        for(int j = 0; j < m; j++){
            soma[i] += matrix[i][j];
        }
    }
    cout << "Soma das linhas da matriz" << endl;
    for(int i = 0; i < n; i++){
        cout << "Linha " << i << ": " << soma[i] << endl;
    }
    return 0;
}
