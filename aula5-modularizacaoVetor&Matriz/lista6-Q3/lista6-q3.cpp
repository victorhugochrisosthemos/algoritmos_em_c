#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

float leiaValorFloat(){
    float x;
    cin >> x;
    return x;
}

void pegarValorVetor(int x,float vetor1[]){
    for(int i = 0; i < x; i++){
        cout << "[" << i+1 << "]: ";
        vetor1[i] = leiaValorFloat();
    }
}

void mostrarVetor(int n,float vetor[]){
    for(int i = 0; i < n; i++){
        cout << vetor[i] << " ";
    }
    cout << "\n";
}

void somaVetores(int x, float vetorA[], float vetorB[]){
    float soma;
    for(int i = 0; i < x; i++){
        soma = vetorA[i] + vetorB[i];
        cout << soma << " ";
    }
    cout << "\n";
}

void subtracaoVetores(int n, float vetorA[], float vetorB[]){
    float subtracao;
    for(int i = 0; i < n; i++){
        subtracao = vetorA[i] - vetorB[i];
        cout << subtracao << " ";
    }
    cout << "\n";
}

void multiplicacaoVetores(int n, float vetorA[], float vetorB[]){
    float multiplicacao;
    for(int i = 0; i < n; i++){
        multiplicacao = vetorA[i] * vetorB[i];
        cout << multiplicacao << " ";
    }
    cout << "\n";
}

void divisaoVetores(int n, float vetorA[], float vetorB[]){
    float divisao;
    for(int i = 0; i < n; i++){
        divisao = vetorA[i] / vetorB[i];
        cout << divisao << " ";
    }
    cout << "\n";
}

int main()
{
    int n;
    float vetorV[15],vetorW[15];

    cout << "Informe o tamanho dos vetores: ";
    n = leiaValorInteiro();
    cout << "---------------------------------------\n";
    cout << "Vetor V" << endl;
    pegarValorVetor(n,vetorV);
    cout << "---------------------------------------\n";
    cout << "Vetor W" << endl;
    pegarValorVetor(n,vetorW);
    cout << "---------------------------------------\n";
    cout << "Vetor V: ";
    mostrarVetor(n,vetorV);
    cout << "Vetor W: ";
    mostrarVetor(n,vetorW);
    cout << "Soma: ";
    somaVetores(n,vetorV,vetorW);
    cout << "Subtracao: ";
    subtracaoVetores(n,vetorV,vetorW);
    cout << "Multiplicacao: ";
    multiplicacaoVetores(n,vetorV,vetorW);
    cout << "Divisao: ";
    divisaoVetores(n,vetorV,vetorW);

    return 0;
}
