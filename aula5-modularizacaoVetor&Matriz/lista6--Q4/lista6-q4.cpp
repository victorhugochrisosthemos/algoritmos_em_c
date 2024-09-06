#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

void pegarValorVetor(int x,int vetor1[]){
    for(int i = 0; i < x; i++){
        cout << "[" << i+1 << "]: ";
        vetor1[i] = leiaValorInteiro();
    }
}

void mostrarVetor(int n,int vetor[]){
    for(int i = 0; i < n; i++){
        cout << vetor[i] << " ";
    }
    cout << "\n";
}

int valorMaiorVetor(int n, int vetor[]){
    int maior;
    maior = vetor[0];
    for(int i = 0; i < n; i++){
        if(vetor[i] > maior){
            maior = vetor[i];
        }
    }
    return maior;
}

int valorMenorVetor(int n, int vetor[]){
    int menor;
    menor = vetor[0];
    for(int i = 0; i < n; i++){
        if(vetor[i] < menor){
            menor = vetor[i];
        }
    }
    return menor;
}

int main()
{

    int n,vetorV[15], maior, menor;

    cout << "Informe o tamanho do vetor: ";
    n = leiaValorInteiro();
    cout << "--------------------------------------------\n";
    cout << "Vetor V: " << endl;
    pegarValorVetor(n,vetorV);
    cout << "--------------------------------------------\n";
    mostrarVetor(n,vetorV);
    cout << "--------------------------------------------\n";
    maior = valorMaiorVetor(n,vetorV);
    cout << "Maior valor do Vetor V: " << maior << endl;
    cout << "--------------------------------------------\n";
    menor = valorMenorVetor(n,vetorV);
    cout << "Menor valor do Vetor V: " << menor << endl;

    return 0;
}
