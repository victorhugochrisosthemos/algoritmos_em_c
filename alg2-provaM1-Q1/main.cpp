#include <iostream>

using namespace std;

void pegaSubs(string frase, int posicao, int caracteres, string &trecho){
    if(frase.size() < posicao + caracteres){
        trecho = "";
    }else{
        for(unsigned int i = posicao; i < posicao + caracteres; i++){
            trecho += frase[i];
        }
    }
}

int main()
{
    string frase = "Maria vai com as outras";
    string trecho = "";
    int posicao = 30;
    int caracteres = 2;
    pegaSubs(frase,posicao,caracteres,trecho);
    cout << "Pegar " << caracteres << " caracteres a partir da posicao " << posicao << " da string: \n" << frase << "\n=> " << trecho;
    return 0;
}
