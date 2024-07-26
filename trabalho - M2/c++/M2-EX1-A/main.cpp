#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int n,contador,termo;
    contador = 0;
    do{
        cout << "Escreva a quantidade N de termos: " << endl;
        cin >> n;
    }while(n <= 0);
    for(contador = 1; contador <= n; contador++){
        termo = pow(contador,2);
        if(contador != n){
            cout << termo << ", ";
        } else{
            cout << termo;
        }
    }
    return 0;
}
