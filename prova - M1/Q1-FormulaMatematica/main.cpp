#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int x, y;
    float z;
    cout << "Informe o valor de X e Y:" << endl;
    cin >> x >> y;
    if (x > 0 && y == 0){
        cout << "Erro" << endl;
    } else {
        z = (pow(x,2) - 5*pow(y,x+1) + sqrt(x+1)/3) / y;
        cout << "Z = " << z;
    }
    return 0;
}
