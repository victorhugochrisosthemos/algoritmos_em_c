#include <iostream>

using namespace std;

#define TMAX 10

int main()
{
    int segunda,soma,diagonal,n,p,q;
    int matrix[TMAX][TMAX] = {{0}};
    int multiplique[TMAX];
    soma = 0;
    segunda = 0;
    diagonal = 0;

    do{
        cout << "Informe a ordem da matriz" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 1 and n > 10);

    cout << "Permutar quais linhas?" << endl;
    do{
        cout << "Linha 1:";
        cin >> p;
        cin.ignore();
    }while(p < 1 and p > n);
    do{
        cout << "Linha 2:";
        cin >> q;
        cin.ignore();
    }while(q < 1 and q > n and p == q);
    cout << "--------------------------------------" << endl;

    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << "Matriz[" << i << "," << j << "]:";
            cin >> matrix[i][j];
            cin.ignore();
        }
    }
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    cout << "Matriz original" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << matrix[i][j] << "   ";
        }
        cout << " " << endl;
    }
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    for(int i = 0; i < n; i++){
        segunda += matrix[i][1];
    }
    cout << "Soma da segunda coluna: " << segunda << endl;
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    for(int i = 0; i < n; i++){
        multiplique[i] = 1;
        for(int j = 0; j < n; j++){
            multiplique[i] *= matrix[i][j];
        }
    }
    cout << "Multiplicacao das linhas" << endl;
    for(int i = 0; i < n; i++){
       cout << "Linha " << i << ": " << multiplique[i] << endl;
    }
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            soma += matrix[i][j];
        }
    }
    cout << "Soma de todos os elementos da matriz: " << soma << endl;
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    for(int i = 0; i < n; i++){
        diagonal += matrix[i][i];
    }
    cout << "Soma dos elementos da diadonal da matriz: " << diagonal << endl;
    cout << "---------------------------------------" << endl;

    cout << " " << endl;
    for(int i = 0; i < n; i++){
        matrix[p-1][i] = matrix[p-1][i] + matrix[q-1][i];
        matrix[q-1][i] = matrix[p-1][i] - matrix[q-1][i];
        matrix[p-1][i] = matrix[p-1][i] - matrix[q-1][i];
    }

    cout << " " << endl;
    cout << "Matriz permutada" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << matrix[i][j] << "   ";
        }
        cout << " " << endl;
    }

    return 0;
}
