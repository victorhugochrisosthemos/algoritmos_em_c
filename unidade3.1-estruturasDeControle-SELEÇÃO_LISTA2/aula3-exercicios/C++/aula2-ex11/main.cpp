#include <iostream>

using namespace std;

int main()
{
    int term,inicio, duracao;
    cout << "Digite a hora de inicio e de termino do jogo, respectivamente, no formato de 24 horas: " << endl;
    cin >> inicio >> term;

    if (term <= inicio){
       if(term == inicio){
            duracao = 24;
       }
       else{
            duracao = 24 - inicio + term;
       }
    }
    else{
        duracao = term - inicio;
    }
    cout << "A duracao eh de " << duracao << endl;

    return 0;
}
