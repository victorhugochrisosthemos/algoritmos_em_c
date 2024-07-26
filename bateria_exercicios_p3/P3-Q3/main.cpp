#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int matrix[10][10] = {{0}};
    for(int i = 0; i < 10; i++){
        matrix[i][i] = 3*pow(i,2) - 1;
        for(int j = i + 1; j < 10; j++){
            matrix[i][j] = 2*i + 7*j - 2;
        }
    }
    for(int i = 0; i < 10; i++){
        for(int j = 0; j < 10; j++){
            cout <<  matrix[i][j] << "    ";
        }
        cout << " " << endl;
    }
    return 0;
}
