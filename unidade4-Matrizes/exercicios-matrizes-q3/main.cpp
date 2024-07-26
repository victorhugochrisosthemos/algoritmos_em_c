#include <iostream>

using namespace std;
#define TMAX 10
int main()
{
    int n;
    int matrix[TMAX][TMAX];
    do{
        cout << "Informe a ordem da matriz" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 1 and n > 10);

    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            if(i == j){
                if(i == 0){
                    matrix[i][j] = 10;
                } else{
                    if(i == n - 1){
                        matrix[i][j] = 20;
                    }else{
                        matrix[i][j] = 1;
                    }
                }
            } else{
                if(i < j){
                    matrix[i][j] = 2;
                } else{
                    matrix[i][j] = 0;
                }
            }
        }
    }
    cout << "-------------------------------------" << endl;
    cout << "Matriz gerada" << endl;
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cout << matrix[i][j] << "     ";
        }
        cout << " " << endl;
    }

    return 0;
}
