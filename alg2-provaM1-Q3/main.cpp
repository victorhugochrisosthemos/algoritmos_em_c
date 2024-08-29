#include <iostream>
#include <cstring>
#include <cmath>

using namespace std;

long int binarioParaDecimal(string binario){
    int soma = 0, contador = 0;
    for(unsigned int i = binario.size() - 1; i > 0; i--){
        if(binario[i] == '1'){
            soma += pow(2,contador);
        }
        contador++;
    }
    if(binario[0] == '0'){
        return soma;
    }else{
        return -soma;
    }
}

int main()
{
    string binario = "00101001";
    long int resultado;
    resultado = binarioParaDecimal(binario);

    cout << resultado;
    return 0;
}
